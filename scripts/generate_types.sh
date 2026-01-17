#!/bin/bash
set -e

# Ensure we are in the sdk root or handle paths correctly
# This script assumes it's run from the cli/ruby-sdk directory or we can find the schema relative to it.

SCHEMA_PATH="../../apps/docs/public/api-reference.json"
TEMP_DIR=".openapi-temp"
TYPES_OUTPUT_FILE="lib/unsent/types.rb"

echo "Generating Ruby types from ${SCHEMA_PATH}..."

# check if schema exists
if [ ! -f "$SCHEMA_PATH" ]; then
    echo "Error: Schema file not found at $SCHEMA_PATH"
    exit 1
fi

# Check if pnpm is available
if ! command -v pnpm &> /dev/null; then
    echo "Error: pnpm not found. Please install Node.js and pnpm."
    exit 1
fi

# Clean up temp directory if it exists
rm -rf "$TEMP_DIR"

# Generate Ruby client using openapi-generator-cli to temp directory
# We only want the models
pnpm dlx @openapitools/openapi-generator-cli generate \
  -i "$SCHEMA_PATH" \
  -g ruby \
  -o "$TEMP_DIR" \
  --global-property models,modelDocs=false,modelTests=false \
  --additional-properties=gemName=unsent,moduleName=Unsent,modelPackage=models

# Check if models were generated
if [ ! -d "$TEMP_DIR/lib/unsent/models" ]; then
    echo "Warning: Could not find generated models in expected locations. checking $TEMP_DIR"
    find "$TEMP_DIR" -maxdepth 4
    exit 1
fi

# Create the consolidated types.rb file
echo "# frozen_string_literal: true" > "$TYPES_OUTPUT_FILE"
echo "" >> "$TYPES_OUTPUT_FILE"
echo "# Auto-generated type definitions from OpenAPI schema" >> "$TYPES_OUTPUT_FILE"
echo "# Generated at: $(date)" >> "$TYPES_OUTPUT_FILE"
echo "" >> "$TYPES_OUTPUT_FILE"
echo "require 'date'" >> "$TYPES_OUTPUT_FILE"
echo "require 'time'" >> "$TYPES_OUTPUT_FILE"
echo "" >> "$TYPES_OUTPUT_FILE"
echo "module Unsent" >> "$TYPES_OUTPUT_FILE"

# Consolidate all model files into one
for model_file in "$TEMP_DIR/lib/unsent/models/"*.rb; do
    if [ -f "$model_file" ]; then
        # Extract the class definition (skip the header comments and module wrapper)
        # We'll remove the opening "module Unsent" and closing "end" from each file
        # and consolidate them into one file
        
        # Skip header comments and require statements, extract class content
        # Remove ApiModelBase inheritance and rename Error class to avoid conflict
        sed -n '/^module Unsent$/,/^end$/p' "$model_file" | \
        sed '1d;$d' | \
        sed 's/^/  /' | \
        sed 's/< ApiModelBase//' | \
        sed 's/class Error /class APIErrorResponse /' >> "$TYPES_OUTPUT_FILE"
        
        echo "" >> "$TYPES_OUTPUT_FILE"
    fi
done

echo "end" >> "$TYPES_OUTPUT_FILE"

# Remove the models directory if it exists
rm -rf "lib/unsent/models"

# Cleanup temp directory
rm -rf "$TEMP_DIR"

echo ""
echo "✓ Types consolidated into ${TYPES_OUTPUT_FILE}"

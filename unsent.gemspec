# frozen_string_literal: true

require_relative "lib/unsent/version"

Gem::Specification.new do |spec|
  spec.name = "unsent"
  spec.version = Unsent::VERSION
  spec.authors = ["sourav"]
  spec.email = ["hey@unsent.dev"]

  spec.summary = "Ruby SDK for the Unsent API - Send transactional emails with ease"
  spec.description = "Official Ruby SDK for the Unsent API. Send transactional emails, manage contacts, campaigns, and domains."
  spec.homepage = "https://unsent.dev"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.4.8"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/souravsspace/unsent-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/souravsspace/unsent-ruby/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir["lib/**/*", "README.md", "LICENSE.txt", "CHANGELOG.md"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # No external dependencies - uses only Ruby standard library
end

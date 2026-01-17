# frozen_string_literal: true

# Auto-generated type definitions from OpenAPI schema
# Generated at: Sat Jan 17 17:13:47 +06 2026

require 'date'
require 'time'

module Unsent
    class AddSuppression200Response 
      attr_accessor :id
  
      attr_accessor :email
  
      attr_accessor :reason
  
      attr_accessor :source
  
      attr_accessor :created_at
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'email' => :'email',
          :'reason' => :'reason',
          :'source' => :'source',
          :'created_at' => :'createdAt'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'email' => :'String',
          :'reason' => :'String',
          :'source' => :'String',
          :'created_at' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'source',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::AddSuppression200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::AddSuppression200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'email')
          self.email = attributes[:'email']
        else
          self.email = nil
        end
  
        if attributes.key?(:'reason')
          self.reason = attributes[:'reason']
        else
          self.reason = nil
        end
  
        if attributes.key?(:'source')
          self.source = attributes[:'source']
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @email.nil?
          invalid_properties.push('invalid value for "email", email cannot be nil.')
        end
  
        if @reason.nil?
          invalid_properties.push('invalid value for "reason", reason cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @email.nil?
        return false if @reason.nil?
        return false if @created_at.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] email Value to be assigned
      def email=(email)
        if email.nil?
          fail ArgumentError, 'email cannot be nil'
        end
  
        @email = email
      end
  
      # Custom attribute writer method with validation
      # @param [Object] reason Value to be assigned
      def reason=(reason)
        if reason.nil?
          fail ArgumentError, 'reason cannot be nil'
        end
  
        @reason = reason
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            email == o.email &&
            reason == o.reason &&
            source == o.source &&
            created_at == o.created_at
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, email, reason, source, created_at].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class AddSuppressionRequest 
      attr_accessor :email
  
      attr_accessor :reason
  
      attr_accessor :source
  
      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values
  
        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end
  
        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'email' => :'email',
          :'reason' => :'reason',
          :'source' => :'source'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'email' => :'String',
          :'reason' => :'String',
          :'source' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::AddSuppressionRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::AddSuppressionRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'email')
          self.email = attributes[:'email']
        else
          self.email = nil
        end
  
        if attributes.key?(:'reason')
          self.reason = attributes[:'reason']
        else
          self.reason = nil
        end
  
        if attributes.key?(:'source')
          self.source = attributes[:'source']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @email.nil?
          invalid_properties.push('invalid value for "email", email cannot be nil.')
        end
  
        if @reason.nil?
          invalid_properties.push('invalid value for "reason", reason cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @email.nil?
        return false if @reason.nil?
        reason_validator = EnumAttributeValidator.new('String', ["HARD_BOUNCE", "COMPLAINT", "MANUAL", "UNSUBSCRIBE"])
        return false unless reason_validator.valid?(@reason)
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] email Value to be assigned
      def email=(email)
        if email.nil?
          fail ArgumentError, 'email cannot be nil'
        end
  
        @email = email
      end
  
      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] reason Object to be assigned
      def reason=(reason)
        validator = EnumAttributeValidator.new('String', ["HARD_BOUNCE", "COMPLAINT", "MANUAL", "UNSUBSCRIBE"])
        unless validator.valid?(reason)
          fail ArgumentError, "invalid value for \"reason\", must be one of #{validator.allowable_values}."
        end
        @reason = reason
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            email == o.email &&
            reason == o.reason &&
            source == o.source
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [email, reason, source].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateApiKey200Response 
      attr_accessor :token
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'token' => :'token'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'token' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateApiKey200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateApiKey200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'token')
          self.token = attributes[:'token']
        else
          self.token = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @token.nil?
          invalid_properties.push('invalid value for "token", token cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @token.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] token Value to be assigned
      def token=(token)
        if token.nil?
          fail ArgumentError, 'token cannot be nil'
        end
  
        @token = token
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            token == o.token
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [token].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateApiKeyRequest 
      attr_accessor :name
  
      attr_accessor :permission
  
      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values
  
        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end
  
        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'name' => :'name',
          :'permission' => :'permission'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'name' => :'String',
          :'permission' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateApiKeyRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateApiKeyRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'permission')
          self.permission = attributes[:'permission']
        else
          self.permission = 'FULL'
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @name.to_s.length < 1
          invalid_properties.push('invalid value for "name", the character length must be greater than or equal to 1.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @name.nil?
        return false if @name.to_s.length < 1
        permission_validator = EnumAttributeValidator.new('String', ["FULL", "SENDING"])
        return false unless permission_validator.valid?(@permission)
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        if name.to_s.length < 1
          fail ArgumentError, 'invalid value for "name", the character length must be greater than or equal to 1.'
        end
  
        @name = name
      end
  
      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] permission Object to be assigned
      def permission=(permission)
        validator = EnumAttributeValidator.new('String', ["FULL", "SENDING"])
        unless validator.valid?(permission)
          fail ArgumentError, "invalid value for \"permission\", must be one of #{validator.allowable_values}."
        end
        @permission = permission
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            name == o.name &&
            permission == o.permission
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [name, permission].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateCampaign200Response 
      attr_accessor :id
  
      attr_accessor :name
  
      attr_accessor :from
  
      attr_accessor :subject
  
      attr_accessor :preview_text
  
      attr_accessor :contact_book_id
  
      attr_accessor :html
  
      attr_accessor :content
  
      attr_accessor :status
  
      attr_accessor :scheduled_at
  
      attr_accessor :batch_size
  
      attr_accessor :batch_window_minutes
  
      attr_accessor :total
  
      attr_accessor :sent
  
      attr_accessor :delivered
  
      attr_accessor :opened
  
      attr_accessor :clicked
  
      attr_accessor :unsubscribed
  
      attr_accessor :bounced
  
      attr_accessor :hard_bounced
  
      attr_accessor :complained
  
      attr_accessor :reply_to
  
      attr_accessor :cc
  
      attr_accessor :bcc
  
      attr_accessor :created_at
  
      attr_accessor :updated_at
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name',
          :'from' => :'from',
          :'subject' => :'subject',
          :'preview_text' => :'previewText',
          :'contact_book_id' => :'contactBookId',
          :'html' => :'html',
          :'content' => :'content',
          :'status' => :'status',
          :'scheduled_at' => :'scheduledAt',
          :'batch_size' => :'batchSize',
          :'batch_window_minutes' => :'batchWindowMinutes',
          :'total' => :'total',
          :'sent' => :'sent',
          :'delivered' => :'delivered',
          :'opened' => :'opened',
          :'clicked' => :'clicked',
          :'unsubscribed' => :'unsubscribed',
          :'bounced' => :'bounced',
          :'hard_bounced' => :'hardBounced',
          :'complained' => :'complained',
          :'reply_to' => :'replyTo',
          :'cc' => :'cc',
          :'bcc' => :'bcc',
          :'created_at' => :'createdAt',
          :'updated_at' => :'updatedAt'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String',
          :'from' => :'String',
          :'subject' => :'String',
          :'preview_text' => :'String',
          :'contact_book_id' => :'String',
          :'html' => :'String',
          :'content' => :'String',
          :'status' => :'String',
          :'scheduled_at' => :'Time',
          :'batch_size' => :'Integer',
          :'batch_window_minutes' => :'Integer',
          :'total' => :'Integer',
          :'sent' => :'Integer',
          :'delivered' => :'Integer',
          :'opened' => :'Integer',
          :'clicked' => :'Integer',
          :'unsubscribed' => :'Integer',
          :'bounced' => :'Integer',
          :'hard_bounced' => :'Integer',
          :'complained' => :'Integer',
          :'reply_to' => :'Array<String>',
          :'cc' => :'Array<String>',
          :'bcc' => :'Array<String>',
          :'created_at' => :'Time',
          :'updated_at' => :'Time'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'preview_text',
          :'contact_book_id',
          :'html',
          :'content',
          :'scheduled_at',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateCampaign200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateCampaign200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'from')
          self.from = attributes[:'from']
        else
          self.from = nil
        end
  
        if attributes.key?(:'subject')
          self.subject = attributes[:'subject']
        else
          self.subject = nil
        end
  
        if attributes.key?(:'preview_text')
          self.preview_text = attributes[:'preview_text']
        else
          self.preview_text = nil
        end
  
        if attributes.key?(:'contact_book_id')
          self.contact_book_id = attributes[:'contact_book_id']
        else
          self.contact_book_id = nil
        end
  
        if attributes.key?(:'html')
          self.html = attributes[:'html']
        else
          self.html = nil
        end
  
        if attributes.key?(:'content')
          self.content = attributes[:'content']
        else
          self.content = nil
        end
  
        if attributes.key?(:'status')
          self.status = attributes[:'status']
        else
          self.status = nil
        end
  
        if attributes.key?(:'scheduled_at')
          self.scheduled_at = attributes[:'scheduled_at']
        else
          self.scheduled_at = nil
        end
  
        if attributes.key?(:'batch_size')
          self.batch_size = attributes[:'batch_size']
        else
          self.batch_size = nil
        end
  
        if attributes.key?(:'batch_window_minutes')
          self.batch_window_minutes = attributes[:'batch_window_minutes']
        else
          self.batch_window_minutes = nil
        end
  
        if attributes.key?(:'total')
          self.total = attributes[:'total']
        else
          self.total = nil
        end
  
        if attributes.key?(:'sent')
          self.sent = attributes[:'sent']
        else
          self.sent = nil
        end
  
        if attributes.key?(:'delivered')
          self.delivered = attributes[:'delivered']
        else
          self.delivered = nil
        end
  
        if attributes.key?(:'opened')
          self.opened = attributes[:'opened']
        else
          self.opened = nil
        end
  
        if attributes.key?(:'clicked')
          self.clicked = attributes[:'clicked']
        else
          self.clicked = nil
        end
  
        if attributes.key?(:'unsubscribed')
          self.unsubscribed = attributes[:'unsubscribed']
        else
          self.unsubscribed = nil
        end
  
        if attributes.key?(:'bounced')
          self.bounced = attributes[:'bounced']
        else
          self.bounced = nil
        end
  
        if attributes.key?(:'hard_bounced')
          self.hard_bounced = attributes[:'hard_bounced']
        else
          self.hard_bounced = nil
        end
  
        if attributes.key?(:'complained')
          self.complained = attributes[:'complained']
        else
          self.complained = nil
        end
  
        if attributes.key?(:'reply_to')
          if (value = attributes[:'reply_to']).is_a?(Array)
            self.reply_to = value
          end
        else
          self.reply_to = nil
        end
  
        if attributes.key?(:'cc')
          if (value = attributes[:'cc']).is_a?(Array)
            self.cc = value
          end
        else
          self.cc = nil
        end
  
        if attributes.key?(:'bcc')
          if (value = attributes[:'bcc']).is_a?(Array)
            self.bcc = value
          end
        else
          self.bcc = nil
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
  
        if attributes.key?(:'updated_at')
          self.updated_at = attributes[:'updated_at']
        else
          self.updated_at = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @from.nil?
          invalid_properties.push('invalid value for "from", from cannot be nil.')
        end
  
        if @subject.nil?
          invalid_properties.push('invalid value for "subject", subject cannot be nil.')
        end
  
        if @status.nil?
          invalid_properties.push('invalid value for "status", status cannot be nil.')
        end
  
        if @batch_size.nil?
          invalid_properties.push('invalid value for "batch_size", batch_size cannot be nil.')
        end
  
        if @batch_window_minutes.nil?
          invalid_properties.push('invalid value for "batch_window_minutes", batch_window_minutes cannot be nil.')
        end
  
        if @total.nil?
          invalid_properties.push('invalid value for "total", total cannot be nil.')
        end
  
        if @sent.nil?
          invalid_properties.push('invalid value for "sent", sent cannot be nil.')
        end
  
        if @delivered.nil?
          invalid_properties.push('invalid value for "delivered", delivered cannot be nil.')
        end
  
        if @opened.nil?
          invalid_properties.push('invalid value for "opened", opened cannot be nil.')
        end
  
        if @clicked.nil?
          invalid_properties.push('invalid value for "clicked", clicked cannot be nil.')
        end
  
        if @unsubscribed.nil?
          invalid_properties.push('invalid value for "unsubscribed", unsubscribed cannot be nil.')
        end
  
        if @bounced.nil?
          invalid_properties.push('invalid value for "bounced", bounced cannot be nil.')
        end
  
        if @hard_bounced.nil?
          invalid_properties.push('invalid value for "hard_bounced", hard_bounced cannot be nil.')
        end
  
        if @complained.nil?
          invalid_properties.push('invalid value for "complained", complained cannot be nil.')
        end
  
        if @reply_to.nil?
          invalid_properties.push('invalid value for "reply_to", reply_to cannot be nil.')
        end
  
        if @cc.nil?
          invalid_properties.push('invalid value for "cc", cc cannot be nil.')
        end
  
        if @bcc.nil?
          invalid_properties.push('invalid value for "bcc", bcc cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        if @updated_at.nil?
          invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @name.nil?
        return false if @from.nil?
        return false if @subject.nil?
        return false if @status.nil?
        return false if @batch_size.nil?
        return false if @batch_window_minutes.nil?
        return false if @total.nil?
        return false if @sent.nil?
        return false if @delivered.nil?
        return false if @opened.nil?
        return false if @clicked.nil?
        return false if @unsubscribed.nil?
        return false if @bounced.nil?
        return false if @hard_bounced.nil?
        return false if @complained.nil?
        return false if @reply_to.nil?
        return false if @cc.nil?
        return false if @bcc.nil?
        return false if @created_at.nil?
        return false if @updated_at.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] from Value to be assigned
      def from=(from)
        if from.nil?
          fail ArgumentError, 'from cannot be nil'
        end
  
        @from = from
      end
  
      # Custom attribute writer method with validation
      # @param [Object] subject Value to be assigned
      def subject=(subject)
        if subject.nil?
          fail ArgumentError, 'subject cannot be nil'
        end
  
        @subject = subject
      end
  
      # Custom attribute writer method with validation
      # @param [Object] status Value to be assigned
      def status=(status)
        if status.nil?
          fail ArgumentError, 'status cannot be nil'
        end
  
        @status = status
      end
  
      # Custom attribute writer method with validation
      # @param [Object] batch_size Value to be assigned
      def batch_size=(batch_size)
        if batch_size.nil?
          fail ArgumentError, 'batch_size cannot be nil'
        end
  
        @batch_size = batch_size
      end
  
      # Custom attribute writer method with validation
      # @param [Object] batch_window_minutes Value to be assigned
      def batch_window_minutes=(batch_window_minutes)
        if batch_window_minutes.nil?
          fail ArgumentError, 'batch_window_minutes cannot be nil'
        end
  
        @batch_window_minutes = batch_window_minutes
      end
  
      # Custom attribute writer method with validation
      # @param [Object] total Value to be assigned
      def total=(total)
        if total.nil?
          fail ArgumentError, 'total cannot be nil'
        end
  
        @total = total
      end
  
      # Custom attribute writer method with validation
      # @param [Object] sent Value to be assigned
      def sent=(sent)
        if sent.nil?
          fail ArgumentError, 'sent cannot be nil'
        end
  
        @sent = sent
      end
  
      # Custom attribute writer method with validation
      # @param [Object] delivered Value to be assigned
      def delivered=(delivered)
        if delivered.nil?
          fail ArgumentError, 'delivered cannot be nil'
        end
  
        @delivered = delivered
      end
  
      # Custom attribute writer method with validation
      # @param [Object] opened Value to be assigned
      def opened=(opened)
        if opened.nil?
          fail ArgumentError, 'opened cannot be nil'
        end
  
        @opened = opened
      end
  
      # Custom attribute writer method with validation
      # @param [Object] clicked Value to be assigned
      def clicked=(clicked)
        if clicked.nil?
          fail ArgumentError, 'clicked cannot be nil'
        end
  
        @clicked = clicked
      end
  
      # Custom attribute writer method with validation
      # @param [Object] unsubscribed Value to be assigned
      def unsubscribed=(unsubscribed)
        if unsubscribed.nil?
          fail ArgumentError, 'unsubscribed cannot be nil'
        end
  
        @unsubscribed = unsubscribed
      end
  
      # Custom attribute writer method with validation
      # @param [Object] bounced Value to be assigned
      def bounced=(bounced)
        if bounced.nil?
          fail ArgumentError, 'bounced cannot be nil'
        end
  
        @bounced = bounced
      end
  
      # Custom attribute writer method with validation
      # @param [Object] hard_bounced Value to be assigned
      def hard_bounced=(hard_bounced)
        if hard_bounced.nil?
          fail ArgumentError, 'hard_bounced cannot be nil'
        end
  
        @hard_bounced = hard_bounced
      end
  
      # Custom attribute writer method with validation
      # @param [Object] complained Value to be assigned
      def complained=(complained)
        if complained.nil?
          fail ArgumentError, 'complained cannot be nil'
        end
  
        @complained = complained
      end
  
      # Custom attribute writer method with validation
      # @param [Object] reply_to Value to be assigned
      def reply_to=(reply_to)
        if reply_to.nil?
          fail ArgumentError, 'reply_to cannot be nil'
        end
  
        @reply_to = reply_to
      end
  
      # Custom attribute writer method with validation
      # @param [Object] cc Value to be assigned
      def cc=(cc)
        if cc.nil?
          fail ArgumentError, 'cc cannot be nil'
        end
  
        @cc = cc
      end
  
      # Custom attribute writer method with validation
      # @param [Object] bcc Value to be assigned
      def bcc=(bcc)
        if bcc.nil?
          fail ArgumentError, 'bcc cannot be nil'
        end
  
        @bcc = bcc
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] updated_at Value to be assigned
      def updated_at=(updated_at)
        if updated_at.nil?
          fail ArgumentError, 'updated_at cannot be nil'
        end
  
        @updated_at = updated_at
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name &&
            from == o.from &&
            subject == o.subject &&
            preview_text == o.preview_text &&
            contact_book_id == o.contact_book_id &&
            html == o.html &&
            content == o.content &&
            status == o.status &&
            scheduled_at == o.scheduled_at &&
            batch_size == o.batch_size &&
            batch_window_minutes == o.batch_window_minutes &&
            total == o.total &&
            sent == o.sent &&
            delivered == o.delivered &&
            opened == o.opened &&
            clicked == o.clicked &&
            unsubscribed == o.unsubscribed &&
            bounced == o.bounced &&
            hard_bounced == o.hard_bounced &&
            complained == o.complained &&
            reply_to == o.reply_to &&
            cc == o.cc &&
            bcc == o.bcc &&
            created_at == o.created_at &&
            updated_at == o.updated_at
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name, from, subject, preview_text, contact_book_id, html, content, status, scheduled_at, batch_size, batch_window_minutes, total, sent, delivered, opened, clicked, unsubscribed, bounced, hard_bounced, complained, reply_to, cc, bcc, created_at, updated_at].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateCampaignRequest 
      attr_accessor :name
  
      attr_accessor :from
  
      attr_accessor :subject
  
      attr_accessor :preview_text
  
      attr_accessor :contact_book_id
  
      attr_accessor :content
  
      attr_accessor :html
  
      attr_accessor :reply_to
  
      attr_accessor :cc
  
      attr_accessor :bcc
  
      attr_accessor :send_now
  
      # Timestamp in ISO 8601 format or natural language (e.g., 'tomorrow 9am', 'next monday 10:30')
      attr_accessor :scheduled_at
  
      attr_accessor :batch_size
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'name' => :'name',
          :'from' => :'from',
          :'subject' => :'subject',
          :'preview_text' => :'previewText',
          :'contact_book_id' => :'contactBookId',
          :'content' => :'content',
          :'html' => :'html',
          :'reply_to' => :'replyTo',
          :'cc' => :'cc',
          :'bcc' => :'bcc',
          :'send_now' => :'sendNow',
          :'scheduled_at' => :'scheduledAt',
          :'batch_size' => :'batchSize'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'name' => :'String',
          :'from' => :'String',
          :'subject' => :'String',
          :'preview_text' => :'String',
          :'contact_book_id' => :'String',
          :'content' => :'String',
          :'html' => :'String',
          :'reply_to' => :'CreateCampaignRequestReplyTo',
          :'cc' => :'CreateCampaignRequestReplyTo',
          :'bcc' => :'CreateCampaignRequestReplyTo',
          :'send_now' => :'Boolean',
          :'scheduled_at' => :'String',
          :'batch_size' => :'Integer'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateCampaignRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateCampaignRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'from')
          self.from = attributes[:'from']
        else
          self.from = nil
        end
  
        if attributes.key?(:'subject')
          self.subject = attributes[:'subject']
        else
          self.subject = nil
        end
  
        if attributes.key?(:'preview_text')
          self.preview_text = attributes[:'preview_text']
        end
  
        if attributes.key?(:'contact_book_id')
          self.contact_book_id = attributes[:'contact_book_id']
        else
          self.contact_book_id = nil
        end
  
        if attributes.key?(:'content')
          self.content = attributes[:'content']
        end
  
        if attributes.key?(:'html')
          self.html = attributes[:'html']
        end
  
        if attributes.key?(:'reply_to')
          self.reply_to = attributes[:'reply_to']
        end
  
        if attributes.key?(:'cc')
          self.cc = attributes[:'cc']
        end
  
        if attributes.key?(:'bcc')
          self.bcc = attributes[:'bcc']
        end
  
        if attributes.key?(:'send_now')
          self.send_now = attributes[:'send_now']
        end
  
        if attributes.key?(:'scheduled_at')
          self.scheduled_at = attributes[:'scheduled_at']
        end
  
        if attributes.key?(:'batch_size')
          self.batch_size = attributes[:'batch_size']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @name.to_s.length < 1
          invalid_properties.push('invalid value for "name", the character length must be greater than or equal to 1.')
        end
  
        if @from.nil?
          invalid_properties.push('invalid value for "from", from cannot be nil.')
        end
  
        if @from.to_s.length < 1
          invalid_properties.push('invalid value for "from", the character length must be greater than or equal to 1.')
        end
  
        if @subject.nil?
          invalid_properties.push('invalid value for "subject", subject cannot be nil.')
        end
  
        if @subject.to_s.length < 1
          invalid_properties.push('invalid value for "subject", the character length must be greater than or equal to 1.')
        end
  
        if @contact_book_id.nil?
          invalid_properties.push('invalid value for "contact_book_id", contact_book_id cannot be nil.')
        end
  
        if @contact_book_id.to_s.length < 1
          invalid_properties.push('invalid value for "contact_book_id", the character length must be greater than or equal to 1.')
        end
  
        if !@content.nil? && @content.to_s.length < 1
          invalid_properties.push('invalid value for "content", the character length must be greater than or equal to 1.')
        end
  
        if !@html.nil? && @html.to_s.length < 1
          invalid_properties.push('invalid value for "html", the character length must be greater than or equal to 1.')
        end
  
        if !@batch_size.nil? && @batch_size > 100000
          invalid_properties.push('invalid value for "batch_size", must be smaller than or equal to 100000.')
        end
  
        if !@batch_size.nil? && @batch_size < 1
          invalid_properties.push('invalid value for "batch_size", must be greater than or equal to 1.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @name.nil?
        return false if @name.to_s.length < 1
        return false if @from.nil?
        return false if @from.to_s.length < 1
        return false if @subject.nil?
        return false if @subject.to_s.length < 1
        return false if @contact_book_id.nil?
        return false if @contact_book_id.to_s.length < 1
        return false if !@content.nil? && @content.to_s.length < 1
        return false if !@html.nil? && @html.to_s.length < 1
        return false if !@batch_size.nil? && @batch_size > 100000
        return false if !@batch_size.nil? && @batch_size < 1
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        if name.to_s.length < 1
          fail ArgumentError, 'invalid value for "name", the character length must be greater than or equal to 1.'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] from Value to be assigned
      def from=(from)
        if from.nil?
          fail ArgumentError, 'from cannot be nil'
        end
  
        if from.to_s.length < 1
          fail ArgumentError, 'invalid value for "from", the character length must be greater than or equal to 1.'
        end
  
        @from = from
      end
  
      # Custom attribute writer method with validation
      # @param [Object] subject Value to be assigned
      def subject=(subject)
        if subject.nil?
          fail ArgumentError, 'subject cannot be nil'
        end
  
        if subject.to_s.length < 1
          fail ArgumentError, 'invalid value for "subject", the character length must be greater than or equal to 1.'
        end
  
        @subject = subject
      end
  
      # Custom attribute writer method with validation
      # @param [Object] contact_book_id Value to be assigned
      def contact_book_id=(contact_book_id)
        if contact_book_id.nil?
          fail ArgumentError, 'contact_book_id cannot be nil'
        end
  
        if contact_book_id.to_s.length < 1
          fail ArgumentError, 'invalid value for "contact_book_id", the character length must be greater than or equal to 1.'
        end
  
        @contact_book_id = contact_book_id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] content Value to be assigned
      def content=(content)
        if content.nil?
          fail ArgumentError, 'content cannot be nil'
        end
  
        if content.to_s.length < 1
          fail ArgumentError, 'invalid value for "content", the character length must be greater than or equal to 1.'
        end
  
        @content = content
      end
  
      # Custom attribute writer method with validation
      # @param [Object] html Value to be assigned
      def html=(html)
        if html.nil?
          fail ArgumentError, 'html cannot be nil'
        end
  
        if html.to_s.length < 1
          fail ArgumentError, 'invalid value for "html", the character length must be greater than or equal to 1.'
        end
  
        @html = html
      end
  
      # Custom attribute writer method with validation
      # @param [Object] batch_size Value to be assigned
      def batch_size=(batch_size)
        if batch_size.nil?
          fail ArgumentError, 'batch_size cannot be nil'
        end
  
        if batch_size > 100000
          fail ArgumentError, 'invalid value for "batch_size", must be smaller than or equal to 100000.'
        end
  
        if batch_size < 1
          fail ArgumentError, 'invalid value for "batch_size", must be greater than or equal to 1.'
        end
  
        @batch_size = batch_size
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            name == o.name &&
            from == o.from &&
            subject == o.subject &&
            preview_text == o.preview_text &&
            contact_book_id == o.contact_book_id &&
            content == o.content &&
            html == o.html &&
            reply_to == o.reply_to &&
            cc == o.cc &&
            bcc == o.bcc &&
            send_now == o.send_now &&
            scheduled_at == o.scheduled_at &&
            batch_size == o.batch_size
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [name, from, subject, preview_text, contact_book_id, content, html, reply_to, cc, bcc, send_now, scheduled_at, batch_size].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    module CreateCampaignRequestReplyTo
      class << self
        # List of class defined in anyOf (OpenAPI v3)
        def openapi_any_of
          [
            :'Array<String>',
            :'String'
          ]
        end
  
        # Builds the object
        # @param [Mixed] Data to be matched against the list of anyOf items
        # @return [Object] Returns the model or the data itself
        def build(data)
          # Go through the list of anyOf items and attempt to identify the appropriate one.
          # Note:
          # - No advanced validation of types in some cases (e.g. "x: { type: string }" will happily match { x: 123 })
          #   due to the way the deserialization is made in the base_object template (it just casts without verifying).
          # - TODO: scalar values are de facto behaving as if they were nullable.
          # - TODO: logging when debugging is set.
          openapi_any_of.each do |klass|
            begin
              next if klass == :AnyType # "nullable: true"
              return find_and_cast_into_type(klass, data)
            rescue # rescue all errors so we keep iterating even if the current item lookup raises
            end
          end
  
          openapi_any_of.include?(:AnyType) ? data : nil
        end
  
        private
  
        SchemaMismatchError = Class.new(StandardError)
  
        # Note: 'File' is missing here because in the regular case we get the data _after_ a call to JSON.parse.
        def find_and_cast_into_type(klass, data)
          return if data.nil?
  
          case klass.to_s
          when 'Boolean'
            return data if data.instance_of?(TrueClass) || data.instance_of?(FalseClass)
          when 'Float'
            return data if data.instance_of?(Float)
          when 'Integer'
            return data if data.instance_of?(Integer)
          when 'Time'
            return Time.parse(data)
          when 'Date'
            return Date.iso8601(data)
          when 'String'
            return data if data.instance_of?(String)
          when 'Object' # "type: object"
            return data if data.instance_of?(Hash)
          when /\AArray<(?<sub_type>.+)>\z/ # "type: array"
            if data.instance_of?(Array)
              sub_type = Regexp.last_match[:sub_type]
              return data.map { |item| find_and_cast_into_type(sub_type, item) }
            end
          when /\AHash<String, (?<sub_type>.+)>\z/ # "type: object" with "additionalProperties: { ... }"
            if data.instance_of?(Hash) && data.keys.all? { |k| k.instance_of?(Symbol) || k.instance_of?(String) }
              sub_type = Regexp.last_match[:sub_type]
              return data.each_with_object({}) { |(k, v), hsh| hsh[k] = find_and_cast_into_type(sub_type, v) }
            end
          else # model
            const = Unsent.const_get(klass)
            if const
              if const.respond_to?(:openapi_any_of) # nested anyOf model
                model = const.build(data)
                return model if model
              else
                # raise if data contains keys that are not known to the model
                raise if const.respond_to?(:acceptable_attributes) && !(data.keys - const.acceptable_attributes).empty?
                model = const.build_from_hash(data)
                return model if model
              end
            end
          end
  
          raise # if no match by now, raise
        rescue
          raise SchemaMismatchError, "#{data} doesn't match the #{klass} type"
        end
      end
    end
  

    class CreateContact200Response 
      attr_accessor :contact_id
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'contact_id' => :'contactId'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'contact_id' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateContact200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateContact200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'contact_id')
          self.contact_id = attributes[:'contact_id']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        true
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            contact_id == o.contact_id
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [contact_id].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateContactBook200Response 
      attr_accessor :id
  
      attr_accessor :name
  
      attr_accessor :emoji
  
      attr_accessor :properties
  
      attr_accessor :team_id
  
      attr_accessor :created_at
  
      attr_accessor :updated_at
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name',
          :'emoji' => :'emoji',
          :'properties' => :'properties',
          :'team_id' => :'teamId',
          :'created_at' => :'createdAt',
          :'updated_at' => :'updatedAt'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String',
          :'emoji' => :'String',
          :'properties' => :'Object',
          :'team_id' => :'String',
          :'created_at' => :'String',
          :'updated_at' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'properties',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateContactBook200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateContactBook200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'emoji')
          self.emoji = attributes[:'emoji']
        else
          self.emoji = nil
        end
  
        if attributes.key?(:'properties')
          self.properties = attributes[:'properties']
        end
  
        if attributes.key?(:'team_id')
          self.team_id = attributes[:'team_id']
        else
          self.team_id = nil
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
  
        if attributes.key?(:'updated_at')
          self.updated_at = attributes[:'updated_at']
        else
          self.updated_at = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @emoji.nil?
          invalid_properties.push('invalid value for "emoji", emoji cannot be nil.')
        end
  
        if @team_id.nil?
          invalid_properties.push('invalid value for "team_id", team_id cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        if @updated_at.nil?
          invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @name.nil?
        return false if @emoji.nil?
        return false if @team_id.nil?
        return false if @created_at.nil?
        return false if @updated_at.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] emoji Value to be assigned
      def emoji=(emoji)
        if emoji.nil?
          fail ArgumentError, 'emoji cannot be nil'
        end
  
        @emoji = emoji
      end
  
      # Custom attribute writer method with validation
      # @param [Object] team_id Value to be assigned
      def team_id=(team_id)
        if team_id.nil?
          fail ArgumentError, 'team_id cannot be nil'
        end
  
        @team_id = team_id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] updated_at Value to be assigned
      def updated_at=(updated_at)
        if updated_at.nil?
          fail ArgumentError, 'updated_at cannot be nil'
        end
  
        @updated_at = updated_at
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name &&
            emoji == o.emoji &&
            properties == o.properties &&
            team_id == o.team_id &&
            created_at == o.created_at &&
            updated_at == o.updated_at
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name, emoji, properties, team_id, created_at, updated_at].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateContactBookRequest 
      attr_accessor :name
  
      attr_accessor :emoji
  
      attr_accessor :properties
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'name' => :'name',
          :'emoji' => :'emoji',
          :'properties' => :'properties'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'name' => :'String',
          :'emoji' => :'String',
          :'properties' => :'Hash<String, String>'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateContactBookRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateContactBookRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'emoji')
          self.emoji = attributes[:'emoji']
        end
  
        if attributes.key?(:'properties')
          if (value = attributes[:'properties']).is_a?(Hash)
            self.properties = value
          end
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @name.to_s.length < 1
          invalid_properties.push('invalid value for "name", the character length must be greater than or equal to 1.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @name.nil?
        return false if @name.to_s.length < 1
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        if name.to_s.length < 1
          fail ArgumentError, 'invalid value for "name", the character length must be greater than or equal to 1.'
        end
  
        @name = name
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            name == o.name &&
            emoji == o.emoji &&
            properties == o.properties
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [name, emoji, properties].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateContactRequest 
      attr_accessor :email
  
      attr_accessor :first_name
  
      attr_accessor :last_name
  
      attr_accessor :properties
  
      attr_accessor :subscribed
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'email' => :'email',
          :'first_name' => :'firstName',
          :'last_name' => :'lastName',
          :'properties' => :'properties',
          :'subscribed' => :'subscribed'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'email' => :'String',
          :'first_name' => :'String',
          :'last_name' => :'String',
          :'properties' => :'Hash<String, String>',
          :'subscribed' => :'Boolean'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateContactRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateContactRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'email')
          self.email = attributes[:'email']
        else
          self.email = nil
        end
  
        if attributes.key?(:'first_name')
          self.first_name = attributes[:'first_name']
        end
  
        if attributes.key?(:'last_name')
          self.last_name = attributes[:'last_name']
        end
  
        if attributes.key?(:'properties')
          if (value = attributes[:'properties']).is_a?(Hash)
            self.properties = value
          end
        end
  
        if attributes.key?(:'subscribed')
          self.subscribed = attributes[:'subscribed']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @email.nil?
          invalid_properties.push('invalid value for "email", email cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @email.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] email Value to be assigned
      def email=(email)
        if email.nil?
          fail ArgumentError, 'email cannot be nil'
        end
  
        @email = email
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            email == o.email &&
            first_name == o.first_name &&
            last_name == o.last_name &&
            properties == o.properties &&
            subscribed == o.subscribed
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [email, first_name, last_name, properties, subscribed].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateDomainRequest 
      attr_accessor :name
  
      attr_accessor :region
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'name' => :'name',
          :'region' => :'region'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'name' => :'String',
          :'region' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateDomainRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateDomainRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'region')
          self.region = attributes[:'region']
        else
          self.region = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @region.nil?
          invalid_properties.push('invalid value for "region", region cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @name.nil?
        return false if @region.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] region Value to be assigned
      def region=(region)
        if region.nil?
          fail ArgumentError, 'region cannot be nil'
        end
  
        @region = region
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            name == o.name &&
            region == o.region
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [name, region].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateTemplate200Response 
      attr_accessor :id
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateTemplate200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateTemplate200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateTemplateRequest 
      attr_accessor :name
  
      attr_accessor :subject
  
      attr_accessor :html
  
      attr_accessor :content
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'name' => :'name',
          :'subject' => :'subject',
          :'html' => :'html',
          :'content' => :'content'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'name' => :'String',
          :'subject' => :'String',
          :'html' => :'String',
          :'content' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateTemplateRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateTemplateRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'subject')
          self.subject = attributes[:'subject']
        else
          self.subject = nil
        end
  
        if attributes.key?(:'html')
          self.html = attributes[:'html']
        end
  
        if attributes.key?(:'content')
          self.content = attributes[:'content']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @name.to_s.length < 1
          invalid_properties.push('invalid value for "name", the character length must be greater than or equal to 1.')
        end
  
        if @subject.nil?
          invalid_properties.push('invalid value for "subject", subject cannot be nil.')
        end
  
        if @subject.to_s.length < 1
          invalid_properties.push('invalid value for "subject", the character length must be greater than or equal to 1.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @name.nil?
        return false if @name.to_s.length < 1
        return false if @subject.nil?
        return false if @subject.to_s.length < 1
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        if name.to_s.length < 1
          fail ArgumentError, 'invalid value for "name", the character length must be greater than or equal to 1.'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] subject Value to be assigned
      def subject=(subject)
        if subject.nil?
          fail ArgumentError, 'subject cannot be nil'
        end
  
        if subject.to_s.length < 1
          fail ArgumentError, 'invalid value for "subject", the character length must be greater than or equal to 1.'
        end
  
        @subject = subject
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            name == o.name &&
            subject == o.subject &&
            html == o.html &&
            content == o.content
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [name, subject, html, content].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class CreateWebhookRequest 
      attr_accessor :url
  
      attr_accessor :description
  
      attr_accessor :event_types
  
      attr_accessor :secret
  
      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values
  
        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end
  
        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'url' => :'url',
          :'description' => :'description',
          :'event_types' => :'eventTypes',
          :'secret' => :'secret'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'url' => :'String',
          :'description' => :'String',
          :'event_types' => :'Array<String>',
          :'secret' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::CreateWebhookRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::CreateWebhookRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'url')
          self.url = attributes[:'url']
        else
          self.url = nil
        end
  
        if attributes.key?(:'description')
          self.description = attributes[:'description']
        end
  
        if attributes.key?(:'event_types')
          if (value = attributes[:'event_types']).is_a?(Array)
            self.event_types = value
          end
        else
          self.event_types = nil
        end
  
        if attributes.key?(:'secret')
          self.secret = attributes[:'secret']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @url.nil?
          invalid_properties.push('invalid value for "url", url cannot be nil.')
        end
  
        if @event_types.nil?
          invalid_properties.push('invalid value for "event_types", event_types cannot be nil.')
        end
  
        if !@secret.nil? && @secret.to_s.length < 16
          invalid_properties.push('invalid value for "secret", the character length must be greater than or equal to 16.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @url.nil?
        return false if @event_types.nil?
        return false if !@secret.nil? && @secret.to_s.length < 16
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] url Value to be assigned
      def url=(url)
        if url.nil?
          fail ArgumentError, 'url cannot be nil'
        end
  
        @url = url
      end
  
      # Custom attribute writer method with validation
      # @param [Object] secret Value to be assigned
      def secret=(secret)
        if secret.nil?
          fail ArgumentError, 'secret cannot be nil'
        end
  
        if secret.to_s.length < 16
          fail ArgumentError, 'invalid value for "secret", the character length must be greater than or equal to 16.'
        end
  
        @secret = secret
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            url == o.url &&
            description == o.description &&
            event_types == o.event_types &&
            secret == o.secret
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [url, description, event_types, secret].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class DeleteContactBook200Response 
      attr_accessor :success
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'success' => :'success'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'success' => :'Boolean'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::DeleteContactBook200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::DeleteContactBook200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'success')
          self.success = attributes[:'success']
        else
          self.success = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @success.nil?
          invalid_properties.push('invalid value for "success", success cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @success.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] success Value to be assigned
      def success=(success)
        if success.nil?
          fail ArgumentError, 'success cannot be nil'
        end
  
        @success = success
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            success == o.success
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [success].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    # Error response
    class APIErrorResponse 
      attr_accessor :code
  
      attr_accessor :message
  
      attr_accessor :docs
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'code' => :'code',
          :'message' => :'message',
          :'docs' => :'docs'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'code' => :'String',
          :'message' => :'String',
          :'docs' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::Error` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::Error`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'code')
          self.code = attributes[:'code']
        else
          self.code = nil
        end
  
        if attributes.key?(:'message')
          self.message = attributes[:'message']
        else
          self.message = nil
        end
  
        if attributes.key?(:'docs')
          self.docs = attributes[:'docs']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @code.nil?
          invalid_properties.push('invalid value for "code", code cannot be nil.')
        end
  
        if @message.nil?
          invalid_properties.push('invalid value for "message", message cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @code.nil?
        return false if @message.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] code Value to be assigned
      def code=(code)
        if code.nil?
          fail ArgumentError, 'code cannot be nil'
        end
  
        @code = code
      end
  
      # Custom attribute writer method with validation
      # @param [Object] message Value to be assigned
      def message=(message)
        if message.nil?
          fail ArgumentError, 'message cannot be nil'
        end
  
        @message = message
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            code == o.code &&
            message == o.message &&
            docs == o.docs
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [code, message, docs].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetAnalytics200Response 
      attr_accessor :day
  
      attr_accessor :month
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'day' => :'day',
          :'month' => :'month'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'day' => :'Array<GetAnalytics200ResponseDayInner>',
          :'month' => :'Array<GetAnalytics200ResponseDayInner>'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetAnalytics200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetAnalytics200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'day')
          if (value = attributes[:'day']).is_a?(Array)
            self.day = value
          end
        else
          self.day = nil
        end
  
        if attributes.key?(:'month')
          if (value = attributes[:'month']).is_a?(Array)
            self.month = value
          end
        else
          self.month = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @day.nil?
          invalid_properties.push('invalid value for "day", day cannot be nil.')
        end
  
        if @month.nil?
          invalid_properties.push('invalid value for "month", month cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @day.nil?
        return false if @month.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] day Value to be assigned
      def day=(day)
        if day.nil?
          fail ArgumentError, 'day cannot be nil'
        end
  
        @day = day
      end
  
      # Custom attribute writer method with validation
      # @param [Object] month Value to be assigned
      def month=(month)
        if month.nil?
          fail ArgumentError, 'month cannot be nil'
        end
  
        @month = month
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            day == o.day &&
            month == o.month
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [day, month].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetAnalytics200ResponseDayInner 
      attr_accessor :type
  
      attr_accessor :sent
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'type' => :'type',
          :'sent' => :'sent'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'type' => :'String',
          :'sent' => :'Float'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetAnalytics200ResponseDayInner` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetAnalytics200ResponseDayInner`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'type')
          self.type = attributes[:'type']
        else
          self.type = nil
        end
  
        if attributes.key?(:'sent')
          self.sent = attributes[:'sent']
        else
          self.sent = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @type.nil?
          invalid_properties.push('invalid value for "type", type cannot be nil.')
        end
  
        if @sent.nil?
          invalid_properties.push('invalid value for "sent", sent cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @type.nil?
        return false if @sent.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] type Value to be assigned
      def type=(type)
        if type.nil?
          fail ArgumentError, 'type cannot be nil'
        end
  
        @type = type
      end
  
      # Custom attribute writer method with validation
      # @param [Object] sent Value to be assigned
      def sent=(sent)
        if sent.nil?
          fail ArgumentError, 'sent cannot be nil'
        end
  
        @sent = sent
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            type == o.type &&
            sent == o.sent
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [type, sent].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetApiKeys200ResponseInner 
      attr_accessor :id
  
      attr_accessor :name
  
      attr_accessor :partial_token
  
      attr_accessor :last_used
  
      attr_accessor :created_at
  
      attr_accessor :permission
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name',
          :'partial_token' => :'partialToken',
          :'last_used' => :'lastUsed',
          :'created_at' => :'createdAt',
          :'permission' => :'permission'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String',
          :'partial_token' => :'String',
          :'last_used' => :'String',
          :'created_at' => :'String',
          :'permission' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'last_used',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetApiKeys200ResponseInner` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetApiKeys200ResponseInner`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'partial_token')
          self.partial_token = attributes[:'partial_token']
        else
          self.partial_token = nil
        end
  
        if attributes.key?(:'last_used')
          self.last_used = attributes[:'last_used']
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
  
        if attributes.key?(:'permission')
          self.permission = attributes[:'permission']
        else
          self.permission = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @partial_token.nil?
          invalid_properties.push('invalid value for "partial_token", partial_token cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        if @permission.nil?
          invalid_properties.push('invalid value for "permission", permission cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @name.nil?
        return false if @partial_token.nil?
        return false if @created_at.nil?
        return false if @permission.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] partial_token Value to be assigned
      def partial_token=(partial_token)
        if partial_token.nil?
          fail ArgumentError, 'partial_token cannot be nil'
        end
  
        @partial_token = partial_token
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] permission Value to be assigned
      def permission=(permission)
        if permission.nil?
          fail ArgumentError, 'permission cannot be nil'
        end
  
        @permission = permission
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name &&
            partial_token == o.partial_token &&
            last_used == o.last_used &&
            created_at == o.created_at &&
            permission == o.permission
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name, partial_token, last_used, created_at, permission].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetCampaigns200ResponseInner 
      attr_accessor :id
  
      attr_accessor :name
  
      attr_accessor :subject
  
      attr_accessor :status
  
      attr_accessor :created_at
  
      attr_accessor :sent
  
      attr_accessor :delivered
  
      attr_accessor :opened
  
      attr_accessor :clicked
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name',
          :'subject' => :'subject',
          :'status' => :'status',
          :'created_at' => :'created_at',
          :'sent' => :'sent',
          :'delivered' => :'delivered',
          :'opened' => :'opened',
          :'clicked' => :'clicked'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String',
          :'subject' => :'String',
          :'status' => :'String',
          :'created_at' => :'String',
          :'sent' => :'Float',
          :'delivered' => :'Float',
          :'opened' => :'Float',
          :'clicked' => :'Float'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'status',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetCampaigns200ResponseInner` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetCampaigns200ResponseInner`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'subject')
          self.subject = attributes[:'subject']
        else
          self.subject = nil
        end
  
        if attributes.key?(:'status')
          self.status = attributes[:'status']
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
  
        if attributes.key?(:'sent')
          self.sent = attributes[:'sent']
        else
          self.sent = 0
        end
  
        if attributes.key?(:'delivered')
          self.delivered = attributes[:'delivered']
        else
          self.delivered = 0
        end
  
        if attributes.key?(:'opened')
          self.opened = attributes[:'opened']
        else
          self.opened = 0
        end
  
        if attributes.key?(:'clicked')
          self.clicked = attributes[:'clicked']
        else
          self.clicked = 0
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @subject.nil?
          invalid_properties.push('invalid value for "subject", subject cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @name.nil?
        return false if @subject.nil?
        return false if @created_at.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] subject Value to be assigned
      def subject=(subject)
        if subject.nil?
          fail ArgumentError, 'subject cannot be nil'
        end
  
        @subject = subject
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name &&
            subject == o.subject &&
            status == o.status &&
            created_at == o.created_at &&
            sent == o.sent &&
            delivered == o.delivered &&
            opened == o.opened &&
            clicked == o.clicked
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name, subject, status, created_at, sent, delivered, opened, clicked].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetContactBook200Response 
      attr_accessor :id
  
      attr_accessor :name
  
      attr_accessor :emoji
  
      attr_accessor :properties
  
      attr_accessor :team_id
  
      attr_accessor :created_at
  
      attr_accessor :updated_at
  
      attr_accessor :details
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name',
          :'emoji' => :'emoji',
          :'properties' => :'properties',
          :'team_id' => :'teamId',
          :'created_at' => :'createdAt',
          :'updated_at' => :'updatedAt',
          :'details' => :'details'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String',
          :'emoji' => :'String',
          :'properties' => :'Object',
          :'team_id' => :'String',
          :'created_at' => :'String',
          :'updated_at' => :'String',
          :'details' => :'GetContactBook200ResponseDetails'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'properties',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetContactBook200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetContactBook200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'emoji')
          self.emoji = attributes[:'emoji']
        else
          self.emoji = nil
        end
  
        if attributes.key?(:'properties')
          self.properties = attributes[:'properties']
        end
  
        if attributes.key?(:'team_id')
          self.team_id = attributes[:'team_id']
        else
          self.team_id = nil
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
  
        if attributes.key?(:'updated_at')
          self.updated_at = attributes[:'updated_at']
        else
          self.updated_at = nil
        end
  
        if attributes.key?(:'details')
          self.details = attributes[:'details']
        else
          self.details = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @emoji.nil?
          invalid_properties.push('invalid value for "emoji", emoji cannot be nil.')
        end
  
        if @team_id.nil?
          invalid_properties.push('invalid value for "team_id", team_id cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        if @updated_at.nil?
          invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
        end
  
        if @details.nil?
          invalid_properties.push('invalid value for "details", details cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @name.nil?
        return false if @emoji.nil?
        return false if @team_id.nil?
        return false if @created_at.nil?
        return false if @updated_at.nil?
        return false if @details.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] emoji Value to be assigned
      def emoji=(emoji)
        if emoji.nil?
          fail ArgumentError, 'emoji cannot be nil'
        end
  
        @emoji = emoji
      end
  
      # Custom attribute writer method with validation
      # @param [Object] team_id Value to be assigned
      def team_id=(team_id)
        if team_id.nil?
          fail ArgumentError, 'team_id cannot be nil'
        end
  
        @team_id = team_id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] updated_at Value to be assigned
      def updated_at=(updated_at)
        if updated_at.nil?
          fail ArgumentError, 'updated_at cannot be nil'
        end
  
        @updated_at = updated_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] details Value to be assigned
      def details=(details)
        if details.nil?
          fail ArgumentError, 'details cannot be nil'
        end
  
        @details = details
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name &&
            emoji == o.emoji &&
            properties == o.properties &&
            team_id == o.team_id &&
            created_at == o.created_at &&
            updated_at == o.updated_at &&
            details == o.details
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name, emoji, properties, team_id, created_at, updated_at, details].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetContactBook200ResponseDetails 
      attr_accessor :total_contacts
  
      attr_accessor :unsubscribed_contacts
  
      attr_accessor :campaigns
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'total_contacts' => :'totalContacts',
          :'unsubscribed_contacts' => :'unsubscribedContacts',
          :'campaigns' => :'campaigns'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'total_contacts' => :'Float',
          :'unsubscribed_contacts' => :'Float',
          :'campaigns' => :'Array<Object>'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetContactBook200ResponseDetails` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetContactBook200ResponseDetails`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'total_contacts')
          self.total_contacts = attributes[:'total_contacts']
        else
          self.total_contacts = nil
        end
  
        if attributes.key?(:'unsubscribed_contacts')
          self.unsubscribed_contacts = attributes[:'unsubscribed_contacts']
        else
          self.unsubscribed_contacts = nil
        end
  
        if attributes.key?(:'campaigns')
          if (value = attributes[:'campaigns']).is_a?(Array)
            self.campaigns = value
          end
        else
          self.campaigns = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @total_contacts.nil?
          invalid_properties.push('invalid value for "total_contacts", total_contacts cannot be nil.')
        end
  
        if @unsubscribed_contacts.nil?
          invalid_properties.push('invalid value for "unsubscribed_contacts", unsubscribed_contacts cannot be nil.')
        end
  
        if @campaigns.nil?
          invalid_properties.push('invalid value for "campaigns", campaigns cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @total_contacts.nil?
        return false if @unsubscribed_contacts.nil?
        return false if @campaigns.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] total_contacts Value to be assigned
      def total_contacts=(total_contacts)
        if total_contacts.nil?
          fail ArgumentError, 'total_contacts cannot be nil'
        end
  
        @total_contacts = total_contacts
      end
  
      # Custom attribute writer method with validation
      # @param [Object] unsubscribed_contacts Value to be assigned
      def unsubscribed_contacts=(unsubscribed_contacts)
        if unsubscribed_contacts.nil?
          fail ArgumentError, 'unsubscribed_contacts cannot be nil'
        end
  
        @unsubscribed_contacts = unsubscribed_contacts
      end
  
      # Custom attribute writer method with validation
      # @param [Object] campaigns Value to be assigned
      def campaigns=(campaigns)
        if campaigns.nil?
          fail ArgumentError, 'campaigns cannot be nil'
        end
  
        @campaigns = campaigns
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            total_contacts == o.total_contacts &&
            unsubscribed_contacts == o.unsubscribed_contacts &&
            campaigns == o.campaigns
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [total_contacts, unsubscribed_contacts, campaigns].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetDomainAnalytics200ResponseInner 
      # The date of the analytics
      attr_accessor :date
  
      # Number of emails sent
      attr_accessor :sent
  
      # Number of emails delivered
      attr_accessor :delivered
  
      # Number of emails opened
      attr_accessor :opened
  
      # Number of emails clicked
      attr_accessor :clicked
  
      # Number of emails bounced
      attr_accessor :bounced
  
      # Number of emails complained
      attr_accessor :complained
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'date' => :'date',
          :'sent' => :'sent',
          :'delivered' => :'delivered',
          :'opened' => :'opened',
          :'clicked' => :'clicked',
          :'bounced' => :'bounced',
          :'complained' => :'complained'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'date' => :'String',
          :'sent' => :'Float',
          :'delivered' => :'Float',
          :'opened' => :'Float',
          :'clicked' => :'Float',
          :'bounced' => :'Float',
          :'complained' => :'Float'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetDomainAnalytics200ResponseInner` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetDomainAnalytics200ResponseInner`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'date')
          self.date = attributes[:'date']
        else
          self.date = nil
        end
  
        if attributes.key?(:'sent')
          self.sent = attributes[:'sent']
        else
          self.sent = nil
        end
  
        if attributes.key?(:'delivered')
          self.delivered = attributes[:'delivered']
        else
          self.delivered = nil
        end
  
        if attributes.key?(:'opened')
          self.opened = attributes[:'opened']
        else
          self.opened = nil
        end
  
        if attributes.key?(:'clicked')
          self.clicked = attributes[:'clicked']
        else
          self.clicked = nil
        end
  
        if attributes.key?(:'bounced')
          self.bounced = attributes[:'bounced']
        else
          self.bounced = nil
        end
  
        if attributes.key?(:'complained')
          self.complained = attributes[:'complained']
        else
          self.complained = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @date.nil?
          invalid_properties.push('invalid value for "date", date cannot be nil.')
        end
  
        if @sent.nil?
          invalid_properties.push('invalid value for "sent", sent cannot be nil.')
        end
  
        if @delivered.nil?
          invalid_properties.push('invalid value for "delivered", delivered cannot be nil.')
        end
  
        if @opened.nil?
          invalid_properties.push('invalid value for "opened", opened cannot be nil.')
        end
  
        if @clicked.nil?
          invalid_properties.push('invalid value for "clicked", clicked cannot be nil.')
        end
  
        if @bounced.nil?
          invalid_properties.push('invalid value for "bounced", bounced cannot be nil.')
        end
  
        if @complained.nil?
          invalid_properties.push('invalid value for "complained", complained cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @date.nil?
        return false if @sent.nil?
        return false if @delivered.nil?
        return false if @opened.nil?
        return false if @clicked.nil?
        return false if @bounced.nil?
        return false if @complained.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] date Value to be assigned
      def date=(date)
        if date.nil?
          fail ArgumentError, 'date cannot be nil'
        end
  
        @date = date
      end
  
      # Custom attribute writer method with validation
      # @param [Object] sent Value to be assigned
      def sent=(sent)
        if sent.nil?
          fail ArgumentError, 'sent cannot be nil'
        end
  
        @sent = sent
      end
  
      # Custom attribute writer method with validation
      # @param [Object] delivered Value to be assigned
      def delivered=(delivered)
        if delivered.nil?
          fail ArgumentError, 'delivered cannot be nil'
        end
  
        @delivered = delivered
      end
  
      # Custom attribute writer method with validation
      # @param [Object] opened Value to be assigned
      def opened=(opened)
        if opened.nil?
          fail ArgumentError, 'opened cannot be nil'
        end
  
        @opened = opened
      end
  
      # Custom attribute writer method with validation
      # @param [Object] clicked Value to be assigned
      def clicked=(clicked)
        if clicked.nil?
          fail ArgumentError, 'clicked cannot be nil'
        end
  
        @clicked = clicked
      end
  
      # Custom attribute writer method with validation
      # @param [Object] bounced Value to be assigned
      def bounced=(bounced)
        if bounced.nil?
          fail ArgumentError, 'bounced cannot be nil'
        end
  
        @bounced = bounced
      end
  
      # Custom attribute writer method with validation
      # @param [Object] complained Value to be assigned
      def complained=(complained)
        if complained.nil?
          fail ArgumentError, 'complained cannot be nil'
        end
  
        @complained = complained
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            date == o.date &&
            sent == o.sent &&
            delivered == o.delivered &&
            opened == o.opened &&
            clicked == o.clicked &&
            bounced == o.bounced &&
            complained == o.complained
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [date, sent, delivered, opened, clicked, bounced, complained].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetDomainStats200Response 
      # Total emails sent
      attr_accessor :total_sent
  
      # Total emails delivered
      attr_accessor :total_delivered
  
      # Total emails opened
      attr_accessor :total_opened
  
      # Total emails clicked
      attr_accessor :total_clicked
  
      # Total emails bounced
      attr_accessor :total_bounced
  
      # Total emails complained
      attr_accessor :total_complained
  
      # Delivery rate percentage
      attr_accessor :delivery_rate
  
      # Open rate percentage
      attr_accessor :open_rate
  
      # Click rate percentage
      attr_accessor :click_rate
  
      # Bounce rate percentage
      attr_accessor :bounce_rate
  
      # Complaint rate percentage
      attr_accessor :complaint_rate
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'total_sent' => :'totalSent',
          :'total_delivered' => :'totalDelivered',
          :'total_opened' => :'totalOpened',
          :'total_clicked' => :'totalClicked',
          :'total_bounced' => :'totalBounced',
          :'total_complained' => :'totalComplained',
          :'delivery_rate' => :'deliveryRate',
          :'open_rate' => :'openRate',
          :'click_rate' => :'clickRate',
          :'bounce_rate' => :'bounceRate',
          :'complaint_rate' => :'complaintRate'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'total_sent' => :'Float',
          :'total_delivered' => :'Float',
          :'total_opened' => :'Float',
          :'total_clicked' => :'Float',
          :'total_bounced' => :'Float',
          :'total_complained' => :'Float',
          :'delivery_rate' => :'Float',
          :'open_rate' => :'Float',
          :'click_rate' => :'Float',
          :'bounce_rate' => :'Float',
          :'complaint_rate' => :'Float'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetDomainStats200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetDomainStats200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'total_sent')
          self.total_sent = attributes[:'total_sent']
        else
          self.total_sent = nil
        end
  
        if attributes.key?(:'total_delivered')
          self.total_delivered = attributes[:'total_delivered']
        else
          self.total_delivered = nil
        end
  
        if attributes.key?(:'total_opened')
          self.total_opened = attributes[:'total_opened']
        else
          self.total_opened = nil
        end
  
        if attributes.key?(:'total_clicked')
          self.total_clicked = attributes[:'total_clicked']
        else
          self.total_clicked = nil
        end
  
        if attributes.key?(:'total_bounced')
          self.total_bounced = attributes[:'total_bounced']
        else
          self.total_bounced = nil
        end
  
        if attributes.key?(:'total_complained')
          self.total_complained = attributes[:'total_complained']
        else
          self.total_complained = nil
        end
  
        if attributes.key?(:'delivery_rate')
          self.delivery_rate = attributes[:'delivery_rate']
        else
          self.delivery_rate = nil
        end
  
        if attributes.key?(:'open_rate')
          self.open_rate = attributes[:'open_rate']
        else
          self.open_rate = nil
        end
  
        if attributes.key?(:'click_rate')
          self.click_rate = attributes[:'click_rate']
        else
          self.click_rate = nil
        end
  
        if attributes.key?(:'bounce_rate')
          self.bounce_rate = attributes[:'bounce_rate']
        else
          self.bounce_rate = nil
        end
  
        if attributes.key?(:'complaint_rate')
          self.complaint_rate = attributes[:'complaint_rate']
        else
          self.complaint_rate = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @total_sent.nil?
          invalid_properties.push('invalid value for "total_sent", total_sent cannot be nil.')
        end
  
        if @total_delivered.nil?
          invalid_properties.push('invalid value for "total_delivered", total_delivered cannot be nil.')
        end
  
        if @total_opened.nil?
          invalid_properties.push('invalid value for "total_opened", total_opened cannot be nil.')
        end
  
        if @total_clicked.nil?
          invalid_properties.push('invalid value for "total_clicked", total_clicked cannot be nil.')
        end
  
        if @total_bounced.nil?
          invalid_properties.push('invalid value for "total_bounced", total_bounced cannot be nil.')
        end
  
        if @total_complained.nil?
          invalid_properties.push('invalid value for "total_complained", total_complained cannot be nil.')
        end
  
        if @delivery_rate.nil?
          invalid_properties.push('invalid value for "delivery_rate", delivery_rate cannot be nil.')
        end
  
        if @open_rate.nil?
          invalid_properties.push('invalid value for "open_rate", open_rate cannot be nil.')
        end
  
        if @click_rate.nil?
          invalid_properties.push('invalid value for "click_rate", click_rate cannot be nil.')
        end
  
        if @bounce_rate.nil?
          invalid_properties.push('invalid value for "bounce_rate", bounce_rate cannot be nil.')
        end
  
        if @complaint_rate.nil?
          invalid_properties.push('invalid value for "complaint_rate", complaint_rate cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @total_sent.nil?
        return false if @total_delivered.nil?
        return false if @total_opened.nil?
        return false if @total_clicked.nil?
        return false if @total_bounced.nil?
        return false if @total_complained.nil?
        return false if @delivery_rate.nil?
        return false if @open_rate.nil?
        return false if @click_rate.nil?
        return false if @bounce_rate.nil?
        return false if @complaint_rate.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] total_sent Value to be assigned
      def total_sent=(total_sent)
        if total_sent.nil?
          fail ArgumentError, 'total_sent cannot be nil'
        end
  
        @total_sent = total_sent
      end
  
      # Custom attribute writer method with validation
      # @param [Object] total_delivered Value to be assigned
      def total_delivered=(total_delivered)
        if total_delivered.nil?
          fail ArgumentError, 'total_delivered cannot be nil'
        end
  
        @total_delivered = total_delivered
      end
  
      # Custom attribute writer method with validation
      # @param [Object] total_opened Value to be assigned
      def total_opened=(total_opened)
        if total_opened.nil?
          fail ArgumentError, 'total_opened cannot be nil'
        end
  
        @total_opened = total_opened
      end
  
      # Custom attribute writer method with validation
      # @param [Object] total_clicked Value to be assigned
      def total_clicked=(total_clicked)
        if total_clicked.nil?
          fail ArgumentError, 'total_clicked cannot be nil'
        end
  
        @total_clicked = total_clicked
      end
  
      # Custom attribute writer method with validation
      # @param [Object] total_bounced Value to be assigned
      def total_bounced=(total_bounced)
        if total_bounced.nil?
          fail ArgumentError, 'total_bounced cannot be nil'
        end
  
        @total_bounced = total_bounced
      end
  
      # Custom attribute writer method with validation
      # @param [Object] total_complained Value to be assigned
      def total_complained=(total_complained)
        if total_complained.nil?
          fail ArgumentError, 'total_complained cannot be nil'
        end
  
        @total_complained = total_complained
      end
  
      # Custom attribute writer method with validation
      # @param [Object] delivery_rate Value to be assigned
      def delivery_rate=(delivery_rate)
        if delivery_rate.nil?
          fail ArgumentError, 'delivery_rate cannot be nil'
        end
  
        @delivery_rate = delivery_rate
      end
  
      # Custom attribute writer method with validation
      # @param [Object] open_rate Value to be assigned
      def open_rate=(open_rate)
        if open_rate.nil?
          fail ArgumentError, 'open_rate cannot be nil'
        end
  
        @open_rate = open_rate
      end
  
      # Custom attribute writer method with validation
      # @param [Object] click_rate Value to be assigned
      def click_rate=(click_rate)
        if click_rate.nil?
          fail ArgumentError, 'click_rate cannot be nil'
        end
  
        @click_rate = click_rate
      end
  
      # Custom attribute writer method with validation
      # @param [Object] bounce_rate Value to be assigned
      def bounce_rate=(bounce_rate)
        if bounce_rate.nil?
          fail ArgumentError, 'bounce_rate cannot be nil'
        end
  
        @bounce_rate = bounce_rate
      end
  
      # Custom attribute writer method with validation
      # @param [Object] complaint_rate Value to be assigned
      def complaint_rate=(complaint_rate)
        if complaint_rate.nil?
          fail ArgumentError, 'complaint_rate cannot be nil'
        end
  
        @complaint_rate = complaint_rate
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            total_sent == o.total_sent &&
            total_delivered == o.total_delivered &&
            total_opened == o.total_opened &&
            total_clicked == o.total_clicked &&
            total_bounced == o.total_bounced &&
            total_complained == o.total_complained &&
            delivery_rate == o.delivery_rate &&
            open_rate == o.open_rate &&
            click_rate == o.click_rate &&
            bounce_rate == o.bounce_rate &&
            complaint_rate == o.complaint_rate
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [total_sent, total_delivered, total_opened, total_clicked, total_bounced, total_complained, delivery_rate, open_rate, click_rate, bounce_rate, complaint_rate].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetDomains200ResponseInner 
      # The ID of the domain
      attr_accessor :id
  
      # The name of the domain
      attr_accessor :name
  
      # The ID of the team
      attr_accessor :team_id
  
      # The status of the domain
      attr_accessor :status
  
      # The region of the domain
      attr_accessor :region
  
      # Whether click tracking is enabled
      attr_accessor :click_tracking
  
      # Whether open tracking is enabled
      attr_accessor :open_tracking
  
      # The public key of the domain
      attr_accessor :public_key
  
      # The DKIM status of the domain
      attr_accessor :dkim_status
  
      # The SPF details of the domain
      attr_accessor :spf_details
  
      # The creation date of the domain
      attr_accessor :created_at
  
      # The last update date of the domain
      attr_accessor :updated_at
  
      # Whether DMARC is added
      attr_accessor :dmarc_added
  
      # Whether the domain is verifying
      attr_accessor :is_verifying
  
      # The error message of the domain
      attr_accessor :error_message
  
      # The subdomain of the domain
      attr_accessor :subdomain
  
      # The verification error of the domain
      attr_accessor :verification_error
  
      # The last checked time of the domain
      attr_accessor :last_checked_time
  
      # The DNS records of the domain
      attr_accessor :dns_records
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name',
          :'team_id' => :'teamId',
          :'status' => :'status',
          :'region' => :'region',
          :'click_tracking' => :'clickTracking',
          :'open_tracking' => :'openTracking',
          :'public_key' => :'publicKey',
          :'dkim_status' => :'dkimStatus',
          :'spf_details' => :'spfDetails',
          :'created_at' => :'createdAt',
          :'updated_at' => :'updatedAt',
          :'dmarc_added' => :'dmarcAdded',
          :'is_verifying' => :'isVerifying',
          :'error_message' => :'errorMessage',
          :'subdomain' => :'subdomain',
          :'verification_error' => :'verificationError',
          :'last_checked_time' => :'lastCheckedTime',
          :'dns_records' => :'dnsRecords'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String',
          :'team_id' => :'String',
          :'status' => :'String',
          :'region' => :'String',
          :'click_tracking' => :'Boolean',
          :'open_tracking' => :'Boolean',
          :'public_key' => :'String',
          :'dkim_status' => :'String',
          :'spf_details' => :'String',
          :'created_at' => :'String',
          :'updated_at' => :'String',
          :'dmarc_added' => :'Boolean',
          :'is_verifying' => :'Boolean',
          :'error_message' => :'String',
          :'subdomain' => :'String',
          :'verification_error' => :'String',
          :'last_checked_time' => :'String',
          :'dns_records' => :'Array<GetDomains200ResponseInnerDnsRecordsInner>'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'dkim_status',
          :'spf_details',
          :'error_message',
          :'subdomain',
          :'verification_error',
          :'last_checked_time',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetDomains200ResponseInner` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetDomains200ResponseInner`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'team_id')
          self.team_id = attributes[:'team_id']
        else
          self.team_id = nil
        end
  
        if attributes.key?(:'status')
          self.status = attributes[:'status']
        else
          self.status = nil
        end
  
        if attributes.key?(:'region')
          self.region = attributes[:'region']
        else
          self.region = 'us-east-1'
        end
  
        if attributes.key?(:'click_tracking')
          self.click_tracking = attributes[:'click_tracking']
        else
          self.click_tracking = false
        end
  
        if attributes.key?(:'open_tracking')
          self.open_tracking = attributes[:'open_tracking']
        else
          self.open_tracking = false
        end
  
        if attributes.key?(:'public_key')
          self.public_key = attributes[:'public_key']
        else
          self.public_key = nil
        end
  
        if attributes.key?(:'dkim_status')
          self.dkim_status = attributes[:'dkim_status']
        end
  
        if attributes.key?(:'spf_details')
          self.spf_details = attributes[:'spf_details']
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
  
        if attributes.key?(:'updated_at')
          self.updated_at = attributes[:'updated_at']
        else
          self.updated_at = nil
        end
  
        if attributes.key?(:'dmarc_added')
          self.dmarc_added = attributes[:'dmarc_added']
        else
          self.dmarc_added = false
        end
  
        if attributes.key?(:'is_verifying')
          self.is_verifying = attributes[:'is_verifying']
        else
          self.is_verifying = false
        end
  
        if attributes.key?(:'error_message')
          self.error_message = attributes[:'error_message']
        end
  
        if attributes.key?(:'subdomain')
          self.subdomain = attributes[:'subdomain']
        end
  
        if attributes.key?(:'verification_error')
          self.verification_error = attributes[:'verification_error']
        end
  
        if attributes.key?(:'last_checked_time')
          self.last_checked_time = attributes[:'last_checked_time']
        end
  
        if attributes.key?(:'dns_records')
          if (value = attributes[:'dns_records']).is_a?(Array)
            self.dns_records = value
          end
        else
          self.dns_records = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @team_id.nil?
          invalid_properties.push('invalid value for "team_id", team_id cannot be nil.')
        end
  
        if @status.nil?
          invalid_properties.push('invalid value for "status", status cannot be nil.')
        end
  
        if @public_key.nil?
          invalid_properties.push('invalid value for "public_key", public_key cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        if @updated_at.nil?
          invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
        end
  
        if @dns_records.nil?
          invalid_properties.push('invalid value for "dns_records", dns_records cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @name.nil?
        return false if @team_id.nil?
        return false if @status.nil?
        return false if @public_key.nil?
        return false if @created_at.nil?
        return false if @updated_at.nil?
        return false if @dns_records.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] team_id Value to be assigned
      def team_id=(team_id)
        if team_id.nil?
          fail ArgumentError, 'team_id cannot be nil'
        end
  
        @team_id = team_id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] status Value to be assigned
      def status=(status)
        if status.nil?
          fail ArgumentError, 'status cannot be nil'
        end
  
        @status = status
      end
  
      # Custom attribute writer method with validation
      # @param [Object] public_key Value to be assigned
      def public_key=(public_key)
        if public_key.nil?
          fail ArgumentError, 'public_key cannot be nil'
        end
  
        @public_key = public_key
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] updated_at Value to be assigned
      def updated_at=(updated_at)
        if updated_at.nil?
          fail ArgumentError, 'updated_at cannot be nil'
        end
  
        @updated_at = updated_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] dns_records Value to be assigned
      def dns_records=(dns_records)
        if dns_records.nil?
          fail ArgumentError, 'dns_records cannot be nil'
        end
  
        @dns_records = dns_records
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name &&
            team_id == o.team_id &&
            status == o.status &&
            region == o.region &&
            click_tracking == o.click_tracking &&
            open_tracking == o.open_tracking &&
            public_key == o.public_key &&
            dkim_status == o.dkim_status &&
            spf_details == o.spf_details &&
            created_at == o.created_at &&
            updated_at == o.updated_at &&
            dmarc_added == o.dmarc_added &&
            is_verifying == o.is_verifying &&
            error_message == o.error_message &&
            subdomain == o.subdomain &&
            verification_error == o.verification_error &&
            last_checked_time == o.last_checked_time &&
            dns_records == o.dns_records
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name, team_id, status, region, click_tracking, open_tracking, public_key, dkim_status, spf_details, created_at, updated_at, dmarc_added, is_verifying, error_message, subdomain, verification_error, last_checked_time, dns_records].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetDomains200ResponseInnerDnsRecordsInner 
      # DNS record type
      attr_accessor :type
  
      # DNS record name
      attr_accessor :name
  
      # DNS record value
      attr_accessor :value
  
      # DNS record TTL
      attr_accessor :ttl
  
      # DNS record priority
      attr_accessor :priority
  
      # The status of the domain
      attr_accessor :status
  
      # Whether the record is recommended
      attr_accessor :recommended
  
      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values
  
        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end
  
        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'type' => :'type',
          :'name' => :'name',
          :'value' => :'value',
          :'ttl' => :'ttl',
          :'priority' => :'priority',
          :'status' => :'status',
          :'recommended' => :'recommended'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'type' => :'String',
          :'name' => :'String',
          :'value' => :'String',
          :'ttl' => :'String',
          :'priority' => :'String',
          :'status' => :'String',
          :'recommended' => :'Boolean'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'priority',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetDomains200ResponseInnerDnsRecordsInner` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetDomains200ResponseInnerDnsRecordsInner`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'type')
          self.type = attributes[:'type']
        else
          self.type = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'value')
          self.value = attributes[:'value']
        else
          self.value = nil
        end
  
        if attributes.key?(:'ttl')
          self.ttl = attributes[:'ttl']
        else
          self.ttl = nil
        end
  
        if attributes.key?(:'priority')
          self.priority = attributes[:'priority']
        end
  
        if attributes.key?(:'status')
          self.status = attributes[:'status']
        else
          self.status = nil
        end
  
        if attributes.key?(:'recommended')
          self.recommended = attributes[:'recommended']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @type.nil?
          invalid_properties.push('invalid value for "type", type cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @value.nil?
          invalid_properties.push('invalid value for "value", value cannot be nil.')
        end
  
        if @ttl.nil?
          invalid_properties.push('invalid value for "ttl", ttl cannot be nil.')
        end
  
        if @status.nil?
          invalid_properties.push('invalid value for "status", status cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @type.nil?
        type_validator = EnumAttributeValidator.new('String', ["MX", "TXT"])
        return false unless type_validator.valid?(@type)
        return false if @name.nil?
        return false if @value.nil?
        return false if @ttl.nil?
        return false if @status.nil?
        true
      end
  
      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] type Object to be assigned
      def type=(type)
        validator = EnumAttributeValidator.new('String', ["MX", "TXT"])
        unless validator.valid?(type)
          fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
        end
        @type = type
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] value Value to be assigned
      def value=(value)
        if value.nil?
          fail ArgumentError, 'value cannot be nil'
        end
  
        @value = value
      end
  
      # Custom attribute writer method with validation
      # @param [Object] ttl Value to be assigned
      def ttl=(ttl)
        if ttl.nil?
          fail ArgumentError, 'ttl cannot be nil'
        end
  
        @ttl = ttl
      end
  
      # Custom attribute writer method with validation
      # @param [Object] status Value to be assigned
      def status=(status)
        if status.nil?
          fail ArgumentError, 'status cannot be nil'
        end
  
        @status = status
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            type == o.type &&
            name == o.name &&
            value == o.value &&
            ttl == o.ttl &&
            priority == o.priority &&
            status == o.status &&
            recommended == o.recommended
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [type, name, value, ttl, priority, status, recommended].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetHealth200Response 
      attr_accessor :status
  
      attr_accessor :uptime
  
      attr_accessor :timestamp
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'status' => :'status',
          :'uptime' => :'uptime',
          :'timestamp' => :'timestamp'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'status' => :'String',
          :'uptime' => :'Float',
          :'timestamp' => :'Float'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetHealth200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetHealth200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'status')
          self.status = attributes[:'status']
        else
          self.status = nil
        end
  
        if attributes.key?(:'uptime')
          self.uptime = attributes[:'uptime']
        else
          self.uptime = nil
        end
  
        if attributes.key?(:'timestamp')
          self.timestamp = attributes[:'timestamp']
        else
          self.timestamp = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @status.nil?
          invalid_properties.push('invalid value for "status", status cannot be nil.')
        end
  
        if @uptime.nil?
          invalid_properties.push('invalid value for "uptime", uptime cannot be nil.')
        end
  
        if @timestamp.nil?
          invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @status.nil?
        return false if @uptime.nil?
        return false if @timestamp.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] status Value to be assigned
      def status=(status)
        if status.nil?
          fail ArgumentError, 'status cannot be nil'
        end
  
        @status = status
      end
  
      # Custom attribute writer method with validation
      # @param [Object] uptime Value to be assigned
      def uptime=(uptime)
        if uptime.nil?
          fail ArgumentError, 'uptime cannot be nil'
        end
  
        @uptime = uptime
      end
  
      # Custom attribute writer method with validation
      # @param [Object] timestamp Value to be assigned
      def timestamp=(timestamp)
        if timestamp.nil?
          fail ArgumentError, 'timestamp cannot be nil'
        end
  
        @timestamp = timestamp
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            status == o.status &&
            uptime == o.uptime &&
            timestamp == o.timestamp
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [status, uptime, timestamp].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetSettings200Response 
      attr_accessor :id
  
      attr_accessor :name
  
      attr_accessor :plan
  
      attr_accessor :daily_email_limit
  
      attr_accessor :monthly_email_limit
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name',
          :'plan' => :'plan',
          :'daily_email_limit' => :'dailyEmailLimit',
          :'monthly_email_limit' => :'monthlyEmailLimit'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String',
          :'plan' => :'String',
          :'daily_email_limit' => :'Float',
          :'monthly_email_limit' => :'Float'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetSettings200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetSettings200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'plan')
          self.plan = attributes[:'plan']
        else
          self.plan = nil
        end
  
        if attributes.key?(:'daily_email_limit')
          self.daily_email_limit = attributes[:'daily_email_limit']
        else
          self.daily_email_limit = nil
        end
  
        if attributes.key?(:'monthly_email_limit')
          self.monthly_email_limit = attributes[:'monthly_email_limit']
        else
          self.monthly_email_limit = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @plan.nil?
          invalid_properties.push('invalid value for "plan", plan cannot be nil.')
        end
  
        if @daily_email_limit.nil?
          invalid_properties.push('invalid value for "daily_email_limit", daily_email_limit cannot be nil.')
        end
  
        if @monthly_email_limit.nil?
          invalid_properties.push('invalid value for "monthly_email_limit", monthly_email_limit cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @name.nil?
        return false if @plan.nil?
        return false if @daily_email_limit.nil?
        return false if @monthly_email_limit.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] plan Value to be assigned
      def plan=(plan)
        if plan.nil?
          fail ArgumentError, 'plan cannot be nil'
        end
  
        @plan = plan
      end
  
      # Custom attribute writer method with validation
      # @param [Object] daily_email_limit Value to be assigned
      def daily_email_limit=(daily_email_limit)
        if daily_email_limit.nil?
          fail ArgumentError, 'daily_email_limit cannot be nil'
        end
  
        @daily_email_limit = daily_email_limit
      end
  
      # Custom attribute writer method with validation
      # @param [Object] monthly_email_limit Value to be assigned
      def monthly_email_limit=(monthly_email_limit)
        if monthly_email_limit.nil?
          fail ArgumentError, 'monthly_email_limit cannot be nil'
        end
  
        @monthly_email_limit = monthly_email_limit
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name &&
            plan == o.plan &&
            daily_email_limit == o.daily_email_limit &&
            monthly_email_limit == o.monthly_email_limit
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name, plan, daily_email_limit, monthly_email_limit].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetTemplates200Response 
      attr_accessor :data
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'data' => :'data'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'data' => :'Array<GetTemplates200ResponseDataInner>'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetTemplates200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetTemplates200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'data')
          if (value = attributes[:'data']).is_a?(Array)
            self.data = value
          end
        else
          self.data = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @data.nil?
          invalid_properties.push('invalid value for "data", data cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @data.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] data Value to be assigned
      def data=(data)
        if data.nil?
          fail ArgumentError, 'data cannot be nil'
        end
  
        @data = data
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            data == o.data
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [data].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetTemplates200ResponseDataInner 
      attr_accessor :id
  
      attr_accessor :name
  
      attr_accessor :subject
  
      attr_accessor :html
  
      attr_accessor :content
  
      attr_accessor :team_id
  
      attr_accessor :created_at
  
      attr_accessor :updated_at
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name',
          :'subject' => :'subject',
          :'html' => :'html',
          :'content' => :'content',
          :'team_id' => :'teamId',
          :'created_at' => :'createdAt',
          :'updated_at' => :'updatedAt'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String',
          :'subject' => :'String',
          :'html' => :'String',
          :'content' => :'String',
          :'team_id' => :'String',
          :'created_at' => :'String',
          :'updated_at' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'html',
          :'content',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetTemplates200ResponseDataInner` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetTemplates200ResponseDataInner`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
  
        if attributes.key?(:'subject')
          self.subject = attributes[:'subject']
        else
          self.subject = nil
        end
  
        if attributes.key?(:'html')
          self.html = attributes[:'html']
        else
          self.html = nil
        end
  
        if attributes.key?(:'content')
          self.content = attributes[:'content']
        else
          self.content = nil
        end
  
        if attributes.key?(:'team_id')
          self.team_id = attributes[:'team_id']
        else
          self.team_id = nil
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
  
        if attributes.key?(:'updated_at')
          self.updated_at = attributes[:'updated_at']
        else
          self.updated_at = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        if @subject.nil?
          invalid_properties.push('invalid value for "subject", subject cannot be nil.')
        end
  
        if @team_id.nil?
          invalid_properties.push('invalid value for "team_id", team_id cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        if @updated_at.nil?
          invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @name.nil?
        return false if @subject.nil?
        return false if @team_id.nil?
        return false if @created_at.nil?
        return false if @updated_at.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] subject Value to be assigned
      def subject=(subject)
        if subject.nil?
          fail ArgumentError, 'subject cannot be nil'
        end
  
        @subject = subject
      end
  
      # Custom attribute writer method with validation
      # @param [Object] team_id Value to be assigned
      def team_id=(team_id)
        if team_id.nil?
          fail ArgumentError, 'team_id cannot be nil'
        end
  
        @team_id = team_id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] updated_at Value to be assigned
      def updated_at=(updated_at)
        if updated_at.nil?
          fail ArgumentError, 'updated_at cannot be nil'
        end
  
        @updated_at = updated_at
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name &&
            subject == o.subject &&
            html == o.html &&
            content == o.content &&
            team_id == o.team_id &&
            created_at == o.created_at &&
            updated_at == o.updated_at
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name, subject, html, content, team_id, created_at, updated_at].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetVersion200Response 
      attr_accessor :version
  
      attr_accessor :environment
  
      attr_accessor :node_version
  
      attr_accessor :platform
  
      attr_accessor :arch
  
      attr_accessor :timestamp
  
      attr_accessor :versions
  
      attr_accessor :memory
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'version' => :'version',
          :'environment' => :'environment',
          :'node_version' => :'nodeVersion',
          :'platform' => :'platform',
          :'arch' => :'arch',
          :'timestamp' => :'timestamp',
          :'versions' => :'versions',
          :'memory' => :'memory'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'version' => :'String',
          :'environment' => :'String',
          :'node_version' => :'String',
          :'platform' => :'String',
          :'arch' => :'String',
          :'timestamp' => :'String',
          :'versions' => :'Hash<String, String>',
          :'memory' => :'GetVersion200ResponseMemory'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetVersion200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetVersion200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'version')
          self.version = attributes[:'version']
        else
          self.version = nil
        end
  
        if attributes.key?(:'environment')
          self.environment = attributes[:'environment']
        end
  
        if attributes.key?(:'node_version')
          self.node_version = attributes[:'node_version']
        else
          self.node_version = nil
        end
  
        if attributes.key?(:'platform')
          self.platform = attributes[:'platform']
        else
          self.platform = nil
        end
  
        if attributes.key?(:'arch')
          self.arch = attributes[:'arch']
        else
          self.arch = nil
        end
  
        if attributes.key?(:'timestamp')
          self.timestamp = attributes[:'timestamp']
        else
          self.timestamp = nil
        end
  
        if attributes.key?(:'versions')
          if (value = attributes[:'versions']).is_a?(Hash)
            self.versions = value
          end
        else
          self.versions = nil
        end
  
        if attributes.key?(:'memory')
          self.memory = attributes[:'memory']
        else
          self.memory = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @version.nil?
          invalid_properties.push('invalid value for "version", version cannot be nil.')
        end
  
        if @node_version.nil?
          invalid_properties.push('invalid value for "node_version", node_version cannot be nil.')
        end
  
        if @platform.nil?
          invalid_properties.push('invalid value for "platform", platform cannot be nil.')
        end
  
        if @arch.nil?
          invalid_properties.push('invalid value for "arch", arch cannot be nil.')
        end
  
        if @timestamp.nil?
          invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
        end
  
        if @versions.nil?
          invalid_properties.push('invalid value for "versions", versions cannot be nil.')
        end
  
        if @memory.nil?
          invalid_properties.push('invalid value for "memory", memory cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @version.nil?
        return false if @node_version.nil?
        return false if @platform.nil?
        return false if @arch.nil?
        return false if @timestamp.nil?
        return false if @versions.nil?
        return false if @memory.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] version Value to be assigned
      def version=(version)
        if version.nil?
          fail ArgumentError, 'version cannot be nil'
        end
  
        @version = version
      end
  
      # Custom attribute writer method with validation
      # @param [Object] node_version Value to be assigned
      def node_version=(node_version)
        if node_version.nil?
          fail ArgumentError, 'node_version cannot be nil'
        end
  
        @node_version = node_version
      end
  
      # Custom attribute writer method with validation
      # @param [Object] platform Value to be assigned
      def platform=(platform)
        if platform.nil?
          fail ArgumentError, 'platform cannot be nil'
        end
  
        @platform = platform
      end
  
      # Custom attribute writer method with validation
      # @param [Object] arch Value to be assigned
      def arch=(arch)
        if arch.nil?
          fail ArgumentError, 'arch cannot be nil'
        end
  
        @arch = arch
      end
  
      # Custom attribute writer method with validation
      # @param [Object] timestamp Value to be assigned
      def timestamp=(timestamp)
        if timestamp.nil?
          fail ArgumentError, 'timestamp cannot be nil'
        end
  
        @timestamp = timestamp
      end
  
      # Custom attribute writer method with validation
      # @param [Object] versions Value to be assigned
      def versions=(versions)
        if versions.nil?
          fail ArgumentError, 'versions cannot be nil'
        end
  
        @versions = versions
      end
  
      # Custom attribute writer method with validation
      # @param [Object] memory Value to be assigned
      def memory=(memory)
        if memory.nil?
          fail ArgumentError, 'memory cannot be nil'
        end
  
        @memory = memory
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            version == o.version &&
            environment == o.environment &&
            node_version == o.node_version &&
            platform == o.platform &&
            arch == o.arch &&
            timestamp == o.timestamp &&
            versions == o.versions &&
            memory == o.memory
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [version, environment, node_version, platform, arch, timestamp, versions, memory].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class GetVersion200ResponseMemory 
      attr_accessor :rss
  
      attr_accessor :heap_total
  
      attr_accessor :heap_used
  
      attr_accessor :external
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'rss' => :'rss',
          :'heap_total' => :'heapTotal',
          :'heap_used' => :'heapUsed',
          :'external' => :'external'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'rss' => :'Float',
          :'heap_total' => :'Float',
          :'heap_used' => :'Float',
          :'external' => :'Float'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::GetVersion200ResponseMemory` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::GetVersion200ResponseMemory`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'rss')
          self.rss = attributes[:'rss']
        else
          self.rss = nil
        end
  
        if attributes.key?(:'heap_total')
          self.heap_total = attributes[:'heap_total']
        else
          self.heap_total = nil
        end
  
        if attributes.key?(:'heap_used')
          self.heap_used = attributes[:'heap_used']
        else
          self.heap_used = nil
        end
  
        if attributes.key?(:'external')
          self.external = attributes[:'external']
        else
          self.external = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @rss.nil?
          invalid_properties.push('invalid value for "rss", rss cannot be nil.')
        end
  
        if @heap_total.nil?
          invalid_properties.push('invalid value for "heap_total", heap_total cannot be nil.')
        end
  
        if @heap_used.nil?
          invalid_properties.push('invalid value for "heap_used", heap_used cannot be nil.')
        end
  
        if @external.nil?
          invalid_properties.push('invalid value for "external", external cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @rss.nil?
        return false if @heap_total.nil?
        return false if @heap_used.nil?
        return false if @external.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] rss Value to be assigned
      def rss=(rss)
        if rss.nil?
          fail ArgumentError, 'rss cannot be nil'
        end
  
        @rss = rss
      end
  
      # Custom attribute writer method with validation
      # @param [Object] heap_total Value to be assigned
      def heap_total=(heap_total)
        if heap_total.nil?
          fail ArgumentError, 'heap_total cannot be nil'
        end
  
        @heap_total = heap_total
      end
  
      # Custom attribute writer method with validation
      # @param [Object] heap_used Value to be assigned
      def heap_used=(heap_used)
        if heap_used.nil?
          fail ArgumentError, 'heap_used cannot be nil'
        end
  
        @heap_used = heap_used
      end
  
      # Custom attribute writer method with validation
      # @param [Object] external Value to be assigned
      def external=(external)
        if external.nil?
          fail ArgumentError, 'external cannot be nil'
        end
  
        @external = external
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            rss == o.rss &&
            heap_total == o.heap_total &&
            heap_used == o.heap_used &&
            external == o.external
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [rss, heap_total, heap_used, external].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    module ListEmailsDomainIdParameter
      class << self
        # List of class defined in anyOf (OpenAPI v3)
        def openapi_any_of
          [
            :'Array<String>',
            :'String'
          ]
        end
  
        # Builds the object
        # @param [Mixed] Data to be matched against the list of anyOf items
        # @return [Object] Returns the model or the data itself
        def build(data)
          # Go through the list of anyOf items and attempt to identify the appropriate one.
          # Note:
          # - No advanced validation of types in some cases (e.g. "x: { type: string }" will happily match { x: 123 })
          #   due to the way the deserialization is made in the base_object template (it just casts without verifying).
          # - TODO: scalar values are de facto behaving as if they were nullable.
          # - TODO: logging when debugging is set.
          openapi_any_of.each do |klass|
            begin
              next if klass == :AnyType # "nullable: true"
              return find_and_cast_into_type(klass, data)
            rescue # rescue all errors so we keep iterating even if the current item lookup raises
            end
          end
  
          openapi_any_of.include?(:AnyType) ? data : nil
        end
  
        private
  
        SchemaMismatchError = Class.new(StandardError)
  
        # Note: 'File' is missing here because in the regular case we get the data _after_ a call to JSON.parse.
        def find_and_cast_into_type(klass, data)
          return if data.nil?
  
          case klass.to_s
          when 'Boolean'
            return data if data.instance_of?(TrueClass) || data.instance_of?(FalseClass)
          when 'Float'
            return data if data.instance_of?(Float)
          when 'Integer'
            return data if data.instance_of?(Integer)
          when 'Time'
            return Time.parse(data)
          when 'Date'
            return Date.iso8601(data)
          when 'String'
            return data if data.instance_of?(String)
          when 'Object' # "type: object"
            return data if data.instance_of?(Hash)
          when /\AArray<(?<sub_type>.+)>\z/ # "type: array"
            if data.instance_of?(Array)
              sub_type = Regexp.last_match[:sub_type]
              return data.map { |item| find_and_cast_into_type(sub_type, item) }
            end
          when /\AHash<String, (?<sub_type>.+)>\z/ # "type: object" with "additionalProperties: { ... }"
            if data.instance_of?(Hash) && data.keys.all? { |k| k.instance_of?(Symbol) || k.instance_of?(String) }
              sub_type = Regexp.last_match[:sub_type]
              return data.each_with_object({}) { |(k, v), hsh| hsh[k] = find_and_cast_into_type(sub_type, v) }
            end
          else # model
            const = Unsent.const_get(klass)
            if const
              if const.respond_to?(:openapi_any_of) # nested anyOf model
                model = const.build(data)
                return model if model
              else
                # raise if data contains keys that are not known to the model
                raise if const.respond_to?(:acceptable_attributes) && !(data.keys - const.acceptable_attributes).empty?
                model = const.build_from_hash(data)
                return model if model
              end
            end
          end
  
          raise # if no match by now, raise
        rescue
          raise SchemaMismatchError, "#{data} doesn't match the #{klass} type"
        end
      end
    end
  

    class ScheduleCampaignRequest 
      # Timestamp in ISO 8601 format or natural language (e.g., 'tomorrow 9am', 'next monday 10:30')
      attr_accessor :scheduled_at
  
      attr_accessor :batch_size
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'scheduled_at' => :'scheduledAt',
          :'batch_size' => :'batchSize'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'scheduled_at' => :'String',
          :'batch_size' => :'Integer'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::ScheduleCampaignRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::ScheduleCampaignRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'scheduled_at')
          self.scheduled_at = attributes[:'scheduled_at']
        end
  
        if attributes.key?(:'batch_size')
          self.batch_size = attributes[:'batch_size']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if !@batch_size.nil? && @batch_size > 100000
          invalid_properties.push('invalid value for "batch_size", must be smaller than or equal to 100000.')
        end
  
        if !@batch_size.nil? && @batch_size < 1
          invalid_properties.push('invalid value for "batch_size", must be greater than or equal to 1.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if !@batch_size.nil? && @batch_size > 100000
        return false if !@batch_size.nil? && @batch_size < 1
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] batch_size Value to be assigned
      def batch_size=(batch_size)
        if batch_size.nil?
          fail ArgumentError, 'batch_size cannot be nil'
        end
  
        if batch_size > 100000
          fail ArgumentError, 'invalid value for "batch_size", must be smaller than or equal to 100000.'
        end
  
        if batch_size < 1
          fail ArgumentError, 'invalid value for "batch_size", must be greater than or equal to 1.'
        end
  
        @batch_size = batch_size
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            scheduled_at == o.scheduled_at &&
            batch_size == o.batch_size
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [scheduled_at, batch_size].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class SendEmailRequest 
      attr_accessor :to
  
      attr_accessor :from
  
      # Optional when templateId is provided
      attr_accessor :subject
  
      # ID of a template from the dashboard
      attr_accessor :template_id
  
      attr_accessor :variables
  
      attr_accessor :reply_to
  
      attr_accessor :cc
  
      attr_accessor :bcc
  
      attr_accessor :text
  
      attr_accessor :html
  
      # Custom headers to included with the emails
      attr_accessor :headers
  
      attr_accessor :attachments
  
      attr_accessor :scheduled_at
  
      attr_accessor :in_reply_to_id
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'to' => :'to',
          :'from' => :'from',
          :'subject' => :'subject',
          :'template_id' => :'templateId',
          :'variables' => :'variables',
          :'reply_to' => :'replyTo',
          :'cc' => :'cc',
          :'bcc' => :'bcc',
          :'text' => :'text',
          :'html' => :'html',
          :'headers' => :'headers',
          :'attachments' => :'attachments',
          :'scheduled_at' => :'scheduledAt',
          :'in_reply_to_id' => :'inReplyToId'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'to' => :'SendEmailRequestTo',
          :'from' => :'String',
          :'subject' => :'String',
          :'template_id' => :'String',
          :'variables' => :'Hash<String, String>',
          :'reply_to' => :'SendEmailRequestTo',
          :'cc' => :'SendEmailRequestTo',
          :'bcc' => :'SendEmailRequestTo',
          :'text' => :'String',
          :'html' => :'String',
          :'headers' => :'Hash<String, String>',
          :'attachments' => :'Array<Object>',
          :'scheduled_at' => :'Time',
          :'in_reply_to_id' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'text',
          :'html',
          :'in_reply_to_id'
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::SendEmailRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::SendEmailRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'to')
          self.to = attributes[:'to']
        else
          self.to = nil
        end
  
        if attributes.key?(:'from')
          self.from = attributes[:'from']
        else
          self.from = nil
        end
  
        if attributes.key?(:'subject')
          self.subject = attributes[:'subject']
        end
  
        if attributes.key?(:'template_id')
          self.template_id = attributes[:'template_id']
        end
  
        if attributes.key?(:'variables')
          if (value = attributes[:'variables']).is_a?(Hash)
            self.variables = value
          end
        end
  
        if attributes.key?(:'reply_to')
          self.reply_to = attributes[:'reply_to']
        end
  
        if attributes.key?(:'cc')
          self.cc = attributes[:'cc']
        end
  
        if attributes.key?(:'bcc')
          self.bcc = attributes[:'bcc']
        end
  
        if attributes.key?(:'text')
          self.text = attributes[:'text']
        end
  
        if attributes.key?(:'html')
          self.html = attributes[:'html']
        end
  
        if attributes.key?(:'headers')
          if (value = attributes[:'headers']).is_a?(Hash)
            self.headers = value
          end
        end
  
        if attributes.key?(:'attachments')
          if (value = attributes[:'attachments']).is_a?(Array)
            self.attachments = value
          end
        end
  
        if attributes.key?(:'scheduled_at')
          self.scheduled_at = attributes[:'scheduled_at']
        end
  
        if attributes.key?(:'in_reply_to_id')
          self.in_reply_to_id = attributes[:'in_reply_to_id']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @to.nil?
          invalid_properties.push('invalid value for "to", to cannot be nil.')
        end
  
        if @from.nil?
          invalid_properties.push('invalid value for "from", from cannot be nil.')
        end
  
        if !@subject.nil? && @subject.to_s.length < 1
          invalid_properties.push('invalid value for "subject", the character length must be greater than or equal to 1.')
        end
  
        if !@text.nil? && @text.to_s.length < 1
          invalid_properties.push('invalid value for "text", the character length must be greater than or equal to 1.')
        end
  
        if !@html.nil? && @html.to_s.length < 1
          invalid_properties.push('invalid value for "html", the character length must be greater than or equal to 1.')
        end
  
        if !@attachments.nil? && @attachments.length > 10
          invalid_properties.push('invalid value for "attachments", number of items must be less than or equal to 10.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @to.nil?
        return false if @from.nil?
        return false if !@subject.nil? && @subject.to_s.length < 1
        return false if !@text.nil? && @text.to_s.length < 1
        return false if !@html.nil? && @html.to_s.length < 1
        return false if !@attachments.nil? && @attachments.length > 10
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] to Value to be assigned
      def to=(to)
        if to.nil?
          fail ArgumentError, 'to cannot be nil'
        end
  
        @to = to
      end
  
      # Custom attribute writer method with validation
      # @param [Object] from Value to be assigned
      def from=(from)
        if from.nil?
          fail ArgumentError, 'from cannot be nil'
        end
  
        @from = from
      end
  
      # Custom attribute writer method with validation
      # @param [Object] subject Value to be assigned
      def subject=(subject)
        if subject.nil?
          fail ArgumentError, 'subject cannot be nil'
        end
  
        if subject.to_s.length < 1
          fail ArgumentError, 'invalid value for "subject", the character length must be greater than or equal to 1.'
        end
  
        @subject = subject
      end
  
      # Custom attribute writer method with validation
      # @param [Object] text Value to be assigned
      def text=(text)
        if !text.nil? && text.to_s.length < 1
          fail ArgumentError, 'invalid value for "text", the character length must be greater than or equal to 1.'
        end
  
        @text = text
      end
  
      # Custom attribute writer method with validation
      # @param [Object] html Value to be assigned
      def html=(html)
        if !html.nil? && html.to_s.length < 1
          fail ArgumentError, 'invalid value for "html", the character length must be greater than or equal to 1.'
        end
  
        @html = html
      end
  
      # Custom attribute writer method with validation
      # @param [Object] attachments Value to be assigned
      def attachments=(attachments)
        if attachments.nil?
          fail ArgumentError, 'attachments cannot be nil'
        end
  
        if attachments.length > 10
          fail ArgumentError, 'invalid value for "attachments", number of items must be less than or equal to 10.'
        end
  
        @attachments = attachments
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            to == o.to &&
            from == o.from &&
            subject == o.subject &&
            template_id == o.template_id &&
            variables == o.variables &&
            reply_to == o.reply_to &&
            cc == o.cc &&
            bcc == o.bcc &&
            text == o.text &&
            html == o.html &&
            headers == o.headers &&
            attachments == o.attachments &&
            scheduled_at == o.scheduled_at &&
            in_reply_to_id == o.in_reply_to_id
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [to, from, subject, template_id, variables, reply_to, cc, bcc, text, html, headers, attachments, scheduled_at, in_reply_to_id].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    module SendEmailRequestTo
      class << self
        # List of class defined in anyOf (OpenAPI v3)
        def openapi_any_of
          [
            :'Array<String>',
            :'String'
          ]
        end
  
        # Builds the object
        # @param [Mixed] Data to be matched against the list of anyOf items
        # @return [Object] Returns the model or the data itself
        def build(data)
          # Go through the list of anyOf items and attempt to identify the appropriate one.
          # Note:
          # - No advanced validation of types in some cases (e.g. "x: { type: string }" will happily match { x: 123 })
          #   due to the way the deserialization is made in the base_object template (it just casts without verifying).
          # - TODO: scalar values are de facto behaving as if they were nullable.
          # - TODO: logging when debugging is set.
          openapi_any_of.each do |klass|
            begin
              next if klass == :AnyType # "nullable: true"
              return find_and_cast_into_type(klass, data)
            rescue # rescue all errors so we keep iterating even if the current item lookup raises
            end
          end
  
          openapi_any_of.include?(:AnyType) ? data : nil
        end
  
        private
  
        SchemaMismatchError = Class.new(StandardError)
  
        # Note: 'File' is missing here because in the regular case we get the data _after_ a call to JSON.parse.
        def find_and_cast_into_type(klass, data)
          return if data.nil?
  
          case klass.to_s
          when 'Boolean'
            return data if data.instance_of?(TrueClass) || data.instance_of?(FalseClass)
          when 'Float'
            return data if data.instance_of?(Float)
          when 'Integer'
            return data if data.instance_of?(Integer)
          when 'Time'
            return Time.parse(data)
          when 'Date'
            return Date.iso8601(data)
          when 'String'
            return data if data.instance_of?(String)
          when 'Object' # "type: object"
            return data if data.instance_of?(Hash)
          when /\AArray<(?<sub_type>.+)>\z/ # "type: array"
            if data.instance_of?(Array)
              sub_type = Regexp.last_match[:sub_type]
              return data.map { |item| find_and_cast_into_type(sub_type, item) }
            end
          when /\AHash<String, (?<sub_type>.+)>\z/ # "type: object" with "additionalProperties: { ... }"
            if data.instance_of?(Hash) && data.keys.all? { |k| k.instance_of?(Symbol) || k.instance_of?(String) }
              sub_type = Regexp.last_match[:sub_type]
              return data.each_with_object({}) { |(k, v), hsh| hsh[k] = find_and_cast_into_type(sub_type, v) }
            end
          else # model
            const = Unsent.const_get(klass)
            if const
              if const.respond_to?(:openapi_any_of) # nested anyOf model
                model = const.build(data)
                return model if model
              else
                # raise if data contains keys that are not known to the model
                raise if const.respond_to?(:acceptable_attributes) && !(data.keys - const.acceptable_attributes).empty?
                model = const.build_from_hash(data)
                return model if model
              end
            end
          end
  
          raise # if no match by now, raise
        rescue
          raise SchemaMismatchError, "#{data} doesn't match the #{klass} type"
        end
      end
    end
  

    class UpdateContactBook200Response 
      attr_accessor :id
  
      attr_accessor :name
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::UpdateContactBook200Response` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::UpdateContactBook200Response`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        else
          self.name = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @name.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        @name = name
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class UpdateContactBookRequest 
      attr_accessor :name
  
      attr_accessor :emoji
  
      attr_accessor :properties
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'name' => :'name',
          :'emoji' => :'emoji',
          :'properties' => :'properties'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'name' => :'String',
          :'emoji' => :'String',
          :'properties' => :'Hash<String, String>'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::UpdateContactBookRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::UpdateContactBookRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        end
  
        if attributes.key?(:'emoji')
          self.emoji = attributes[:'emoji']
        end
  
        if attributes.key?(:'properties')
          if (value = attributes[:'properties']).is_a?(Hash)
            self.properties = value
          end
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        true
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            name == o.name &&
            emoji == o.emoji &&
            properties == o.properties
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [name, emoji, properties].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class UpdateContactRequest 
      attr_accessor :first_name
  
      attr_accessor :last_name
  
      attr_accessor :properties
  
      attr_accessor :subscribed
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'first_name' => :'firstName',
          :'last_name' => :'lastName',
          :'properties' => :'properties',
          :'subscribed' => :'subscribed'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'first_name' => :'String',
          :'last_name' => :'String',
          :'properties' => :'Hash<String, String>',
          :'subscribed' => :'Boolean'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::UpdateContactRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::UpdateContactRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'first_name')
          self.first_name = attributes[:'first_name']
        end
  
        if attributes.key?(:'last_name')
          self.last_name = attributes[:'last_name']
        end
  
        if attributes.key?(:'properties')
          if (value = attributes[:'properties']).is_a?(Hash)
            self.properties = value
          end
        end
  
        if attributes.key?(:'subscribed')
          self.subscribed = attributes[:'subscribed']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        true
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            first_name == o.first_name &&
            last_name == o.last_name &&
            properties == o.properties &&
            subscribed == o.subscribed
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [first_name, last_name, properties, subscribed].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class UpdateTemplateRequest 
      attr_accessor :name
  
      attr_accessor :subject
  
      attr_accessor :html
  
      attr_accessor :content
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'name' => :'name',
          :'subject' => :'subject',
          :'html' => :'html',
          :'content' => :'content'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'name' => :'String',
          :'subject' => :'String',
          :'html' => :'String',
          :'content' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::UpdateTemplateRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::UpdateTemplateRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'name')
          self.name = attributes[:'name']
        end
  
        if attributes.key?(:'subject')
          self.subject = attributes[:'subject']
        end
  
        if attributes.key?(:'html')
          self.html = attributes[:'html']
        end
  
        if attributes.key?(:'content')
          self.content = attributes[:'content']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if !@name.nil? && @name.to_s.length < 1
          invalid_properties.push('invalid value for "name", the character length must be greater than or equal to 1.')
        end
  
        if !@subject.nil? && @subject.to_s.length < 1
          invalid_properties.push('invalid value for "subject", the character length must be greater than or equal to 1.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if !@name.nil? && @name.to_s.length < 1
        return false if !@subject.nil? && @subject.to_s.length < 1
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] name Value to be assigned
      def name=(name)
        if name.nil?
          fail ArgumentError, 'name cannot be nil'
        end
  
        if name.to_s.length < 1
          fail ArgumentError, 'invalid value for "name", the character length must be greater than or equal to 1.'
        end
  
        @name = name
      end
  
      # Custom attribute writer method with validation
      # @param [Object] subject Value to be assigned
      def subject=(subject)
        if subject.nil?
          fail ArgumentError, 'subject cannot be nil'
        end
  
        if subject.to_s.length < 1
          fail ArgumentError, 'invalid value for "subject", the character length must be greater than or equal to 1.'
        end
  
        @subject = subject
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            name == o.name &&
            subject == o.subject &&
            html == o.html &&
            content == o.content
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [name, subject, html, content].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    class UpdateWebhookRequest 
      attr_accessor :url
  
      attr_accessor :description
  
      attr_accessor :event_types
  
      attr_accessor :active
  
      attr_accessor :rotate_secret
  
      attr_accessor :secret
  
      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values
  
        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end
  
        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'url' => :'url',
          :'description' => :'description',
          :'event_types' => :'eventTypes',
          :'active' => :'active',
          :'rotate_secret' => :'rotateSecret',
          :'secret' => :'secret'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'url' => :'String',
          :'description' => :'String',
          :'event_types' => :'Array<String>',
          :'active' => :'Boolean',
          :'rotate_secret' => :'Boolean',
          :'secret' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'description',
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::UpdateWebhookRequest` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::UpdateWebhookRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'url')
          self.url = attributes[:'url']
        end
  
        if attributes.key?(:'description')
          self.description = attributes[:'description']
        end
  
        if attributes.key?(:'event_types')
          if (value = attributes[:'event_types']).is_a?(Array)
            self.event_types = value
          end
        end
  
        if attributes.key?(:'active')
          self.active = attributes[:'active']
        end
  
        if attributes.key?(:'rotate_secret')
          self.rotate_secret = attributes[:'rotate_secret']
        end
  
        if attributes.key?(:'secret')
          self.secret = attributes[:'secret']
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if !@secret.nil? && @secret.to_s.length < 16
          invalid_properties.push('invalid value for "secret", the character length must be greater than or equal to 16.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if !@secret.nil? && @secret.to_s.length < 16
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] secret Value to be assigned
      def secret=(secret)
        if secret.nil?
          fail ArgumentError, 'secret cannot be nil'
        end
  
        if secret.to_s.length < 16
          fail ArgumentError, 'invalid value for "secret", the character length must be greater than or equal to 16.'
        end
  
        @secret = secret
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            url == o.url &&
            description == o.description &&
            event_types == o.event_types &&
            active == o.active &&
            rotate_secret == o.rotate_secret &&
            secret == o.secret
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [url, description, event_types, active, rotate_secret, secret].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    # Webhook details
    class Webhook 
      attr_accessor :id
  
      attr_accessor :url
  
      attr_accessor :description
  
      attr_accessor :event_types
  
      attr_accessor :status
  
      attr_accessor :secret
  
      attr_accessor :api_version
  
      attr_accessor :consecutive_failures
  
      attr_accessor :last_success_at
  
      attr_accessor :last_failure_at
  
      attr_accessor :created_at
  
      attr_accessor :updated_at
  
      attr_accessor :team_id
  
      attr_accessor :created_by_user_id
  
      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values
  
        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end
  
        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'url' => :'url',
          :'description' => :'description',
          :'event_types' => :'eventTypes',
          :'status' => :'status',
          :'secret' => :'secret',
          :'api_version' => :'apiVersion',
          :'consecutive_failures' => :'consecutiveFailures',
          :'last_success_at' => :'lastSuccessAt',
          :'last_failure_at' => :'lastFailureAt',
          :'created_at' => :'createdAt',
          :'updated_at' => :'updatedAt',
          :'team_id' => :'teamId',
          :'created_by_user_id' => :'createdByUserId'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'url' => :'String',
          :'description' => :'String',
          :'event_types' => :'Array<String>',
          :'status' => :'String',
          :'secret' => :'String',
          :'api_version' => :'String',
          :'consecutive_failures' => :'Float',
          :'last_success_at' => :'String',
          :'last_failure_at' => :'String',
          :'created_at' => :'String',
          :'updated_at' => :'String',
          :'team_id' => :'String',
          :'created_by_user_id' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'description',
          :'api_version',
          :'last_success_at',
          :'last_failure_at',
          :'created_by_user_id'
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::Webhook` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::Webhook`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'url')
          self.url = attributes[:'url']
        else
          self.url = nil
        end
  
        if attributes.key?(:'description')
          self.description = attributes[:'description']
        else
          self.description = nil
        end
  
        if attributes.key?(:'event_types')
          if (value = attributes[:'event_types']).is_a?(Array)
            self.event_types = value
          end
        else
          self.event_types = nil
        end
  
        if attributes.key?(:'status')
          self.status = attributes[:'status']
        else
          self.status = nil
        end
  
        if attributes.key?(:'secret')
          self.secret = attributes[:'secret']
        else
          self.secret = nil
        end
  
        if attributes.key?(:'api_version')
          self.api_version = attributes[:'api_version']
        else
          self.api_version = nil
        end
  
        if attributes.key?(:'consecutive_failures')
          self.consecutive_failures = attributes[:'consecutive_failures']
        else
          self.consecutive_failures = nil
        end
  
        if attributes.key?(:'last_success_at')
          self.last_success_at = attributes[:'last_success_at']
        else
          self.last_success_at = nil
        end
  
        if attributes.key?(:'last_failure_at')
          self.last_failure_at = attributes[:'last_failure_at']
        else
          self.last_failure_at = nil
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
  
        if attributes.key?(:'updated_at')
          self.updated_at = attributes[:'updated_at']
        else
          self.updated_at = nil
        end
  
        if attributes.key?(:'team_id')
          self.team_id = attributes[:'team_id']
        else
          self.team_id = nil
        end
  
        if attributes.key?(:'created_by_user_id')
          self.created_by_user_id = attributes[:'created_by_user_id']
        else
          self.created_by_user_id = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @url.nil?
          invalid_properties.push('invalid value for "url", url cannot be nil.')
        end
  
        if @event_types.nil?
          invalid_properties.push('invalid value for "event_types", event_types cannot be nil.')
        end
  
        if @status.nil?
          invalid_properties.push('invalid value for "status", status cannot be nil.')
        end
  
        if @secret.nil?
          invalid_properties.push('invalid value for "secret", secret cannot be nil.')
        end
  
        if @consecutive_failures.nil?
          invalid_properties.push('invalid value for "consecutive_failures", consecutive_failures cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        if @updated_at.nil?
          invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
        end
  
        if @team_id.nil?
          invalid_properties.push('invalid value for "team_id", team_id cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @url.nil?
        return false if @event_types.nil?
        return false if @status.nil?
        return false if @secret.nil?
        return false if @consecutive_failures.nil?
        return false if @created_at.nil?
        return false if @updated_at.nil?
        return false if @team_id.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] url Value to be assigned
      def url=(url)
        if url.nil?
          fail ArgumentError, 'url cannot be nil'
        end
  
        @url = url
      end
  
      # Custom attribute writer method with validation
      # @param [Object] status Value to be assigned
      def status=(status)
        if status.nil?
          fail ArgumentError, 'status cannot be nil'
        end
  
        @status = status
      end
  
      # Custom attribute writer method with validation
      # @param [Object] secret Value to be assigned
      def secret=(secret)
        if secret.nil?
          fail ArgumentError, 'secret cannot be nil'
        end
  
        @secret = secret
      end
  
      # Custom attribute writer method with validation
      # @param [Object] consecutive_failures Value to be assigned
      def consecutive_failures=(consecutive_failures)
        if consecutive_failures.nil?
          fail ArgumentError, 'consecutive_failures cannot be nil'
        end
  
        @consecutive_failures = consecutive_failures
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] updated_at Value to be assigned
      def updated_at=(updated_at)
        if updated_at.nil?
          fail ArgumentError, 'updated_at cannot be nil'
        end
  
        @updated_at = updated_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] team_id Value to be assigned
      def team_id=(team_id)
        if team_id.nil?
          fail ArgumentError, 'team_id cannot be nil'
        end
  
        @team_id = team_id
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            url == o.url &&
            description == o.description &&
            event_types == o.event_types &&
            status == o.status &&
            secret == o.secret &&
            api_version == o.api_version &&
            consecutive_failures == o.consecutive_failures &&
            last_success_at == o.last_success_at &&
            last_failure_at == o.last_failure_at &&
            created_at == o.created_at &&
            updated_at == o.updated_at &&
            team_id == o.team_id &&
            created_by_user_id == o.created_by_user_id
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, url, description, event_types, status, secret, api_version, consecutive_failures, last_success_at, last_failure_at, created_at, updated_at, team_id, created_by_user_id].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

    # Webhook call details
    class WebhookCall 
      attr_accessor :id
  
      attr_accessor :type
  
      attr_accessor :created_at
  
      attr_accessor :updated_at
  
      attr_accessor :team_id
  
      attr_accessor :status
  
      attr_accessor :webhook_id
  
      attr_accessor :payload
  
      attr_accessor :attempt
  
      attr_accessor :next_attempt_at
  
      attr_accessor :last_error
  
      attr_accessor :response_status
  
      attr_accessor :response_time_ms
  
      attr_accessor :response_text
  
      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'type' => :'type',
          :'created_at' => :'createdAt',
          :'updated_at' => :'updatedAt',
          :'team_id' => :'teamId',
          :'status' => :'status',
          :'webhook_id' => :'webhookId',
          :'payload' => :'payload',
          :'attempt' => :'attempt',
          :'next_attempt_at' => :'nextAttemptAt',
          :'last_error' => :'lastError',
          :'response_status' => :'responseStatus',
          :'response_time_ms' => :'responseTimeMs',
          :'response_text' => :'responseText'
        }
      end
  
      # Returns attribute mapping this model knows about
      def self.acceptable_attribute_map
        attribute_map
      end
  
      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        acceptable_attribute_map.values
      end
  
      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'type' => :'String',
          :'created_at' => :'String',
          :'updated_at' => :'String',
          :'team_id' => :'String',
          :'status' => :'String',
          :'webhook_id' => :'String',
          :'payload' => :'String',
          :'attempt' => :'Float',
          :'next_attempt_at' => :'String',
          :'last_error' => :'String',
          :'response_status' => :'Float',
          :'response_time_ms' => :'Float',
          :'response_text' => :'String'
        }
      end
  
      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
          :'next_attempt_at',
          :'last_error',
          :'response_status',
          :'response_time_ms',
          :'response_text'
        ])
      end
  
      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Unsent::WebhookCall` initialize method"
        end
  
        # check to see if the attribute exists and convert string to symbol for hash key
        acceptable_attribute_map = self.class.acceptable_attribute_map
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!acceptable_attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Unsent::WebhookCall`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }
  
        if attributes.key?(:'id')
          self.id = attributes[:'id']
        else
          self.id = nil
        end
  
        if attributes.key?(:'type')
          self.type = attributes[:'type']
        else
          self.type = nil
        end
  
        if attributes.key?(:'created_at')
          self.created_at = attributes[:'created_at']
        else
          self.created_at = nil
        end
  
        if attributes.key?(:'updated_at')
          self.updated_at = attributes[:'updated_at']
        else
          self.updated_at = nil
        end
  
        if attributes.key?(:'team_id')
          self.team_id = attributes[:'team_id']
        else
          self.team_id = nil
        end
  
        if attributes.key?(:'status')
          self.status = attributes[:'status']
        else
          self.status = nil
        end
  
        if attributes.key?(:'webhook_id')
          self.webhook_id = attributes[:'webhook_id']
        else
          self.webhook_id = nil
        end
  
        if attributes.key?(:'payload')
          self.payload = attributes[:'payload']
        else
          self.payload = nil
        end
  
        if attributes.key?(:'attempt')
          self.attempt = attributes[:'attempt']
        else
          self.attempt = nil
        end
  
        if attributes.key?(:'next_attempt_at')
          self.next_attempt_at = attributes[:'next_attempt_at']
        else
          self.next_attempt_at = nil
        end
  
        if attributes.key?(:'last_error')
          self.last_error = attributes[:'last_error']
        else
          self.last_error = nil
        end
  
        if attributes.key?(:'response_status')
          self.response_status = attributes[:'response_status']
        else
          self.response_status = nil
        end
  
        if attributes.key?(:'response_time_ms')
          self.response_time_ms = attributes[:'response_time_ms']
        else
          self.response_time_ms = nil
        end
  
        if attributes.key?(:'response_text')
          self.response_text = attributes[:'response_text']
        else
          self.response_text = nil
        end
      end
  
      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end
  
        if @type.nil?
          invalid_properties.push('invalid value for "type", type cannot be nil.')
        end
  
        if @created_at.nil?
          invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
        end
  
        if @updated_at.nil?
          invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
        end
  
        if @team_id.nil?
          invalid_properties.push('invalid value for "team_id", team_id cannot be nil.')
        end
  
        if @status.nil?
          invalid_properties.push('invalid value for "status", status cannot be nil.')
        end
  
        if @webhook_id.nil?
          invalid_properties.push('invalid value for "webhook_id", webhook_id cannot be nil.')
        end
  
        if @payload.nil?
          invalid_properties.push('invalid value for "payload", payload cannot be nil.')
        end
  
        if @attempt.nil?
          invalid_properties.push('invalid value for "attempt", attempt cannot be nil.')
        end
  
        invalid_properties
      end
  
      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        warn '[DEPRECATED] the `valid?` method is obsolete'
        return false if @id.nil?
        return false if @type.nil?
        return false if @created_at.nil?
        return false if @updated_at.nil?
        return false if @team_id.nil?
        return false if @status.nil?
        return false if @webhook_id.nil?
        return false if @payload.nil?
        return false if @attempt.nil?
        true
      end
  
      # Custom attribute writer method with validation
      # @param [Object] id Value to be assigned
      def id=(id)
        if id.nil?
          fail ArgumentError, 'id cannot be nil'
        end
  
        @id = id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] type Value to be assigned
      def type=(type)
        if type.nil?
          fail ArgumentError, 'type cannot be nil'
        end
  
        @type = type
      end
  
      # Custom attribute writer method with validation
      # @param [Object] created_at Value to be assigned
      def created_at=(created_at)
        if created_at.nil?
          fail ArgumentError, 'created_at cannot be nil'
        end
  
        @created_at = created_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] updated_at Value to be assigned
      def updated_at=(updated_at)
        if updated_at.nil?
          fail ArgumentError, 'updated_at cannot be nil'
        end
  
        @updated_at = updated_at
      end
  
      # Custom attribute writer method with validation
      # @param [Object] team_id Value to be assigned
      def team_id=(team_id)
        if team_id.nil?
          fail ArgumentError, 'team_id cannot be nil'
        end
  
        @team_id = team_id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] status Value to be assigned
      def status=(status)
        if status.nil?
          fail ArgumentError, 'status cannot be nil'
        end
  
        @status = status
      end
  
      # Custom attribute writer method with validation
      # @param [Object] webhook_id Value to be assigned
      def webhook_id=(webhook_id)
        if webhook_id.nil?
          fail ArgumentError, 'webhook_id cannot be nil'
        end
  
        @webhook_id = webhook_id
      end
  
      # Custom attribute writer method with validation
      # @param [Object] payload Value to be assigned
      def payload=(payload)
        if payload.nil?
          fail ArgumentError, 'payload cannot be nil'
        end
  
        @payload = payload
      end
  
      # Custom attribute writer method with validation
      # @param [Object] attempt Value to be assigned
      def attempt=(attempt)
        if attempt.nil?
          fail ArgumentError, 'attempt cannot be nil'
        end
  
        @attempt = attempt
      end
  
      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            type == o.type &&
            created_at == o.created_at &&
            updated_at == o.updated_at &&
            team_id == o.team_id &&
            status == o.status &&
            webhook_id == o.webhook_id &&
            payload == o.payload &&
            attempt == o.attempt &&
            next_attempt_at == o.next_attempt_at &&
            last_error == o.last_error &&
            response_status == o.response_status &&
            response_time_ms == o.response_time_ms &&
            response_text == o.response_text
      end
  
      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end
  
      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, type, created_at, updated_at, team_id, status, webhook_id, payload, attempt, next_attempt_at, last_error, response_status, response_time_ms, response_text].hash
      end
  
      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        openapi_types.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
          end
        end
        new(transformed_hash)
      end
  
      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
  
          hash[param] = _to_hash(value)
        end
        hash
      end
  
    end
  

end

=begin
#CRM Imports

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Imports
      class PublicImportError
        attr_accessor :error_type

        attr_accessor :object_type

        attr_accessor :invalid_value

        attr_accessor :extra_context

        attr_accessor :object_type_id

        attr_accessor :known_column_number

        attr_accessor :source_data

        attr_accessor :created_at

        attr_accessor :id

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
            :'error_type' => :'errorType',
            :'object_type' => :'objectType',
            :'invalid_value' => :'invalidValue',
            :'extra_context' => :'extraContext',
            :'object_type_id' => :'objectTypeId',
            :'known_column_number' => :'knownColumnNumber',
            :'source_data' => :'sourceData',
            :'created_at' => :'createdAt',
            :'id' => :'id'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'error_type' => :'String',
            :'object_type' => :'String',
            :'invalid_value' => :'String',
            :'extra_context' => :'String',
            :'object_type_id' => :'String',
            :'known_column_number' => :'Integer',
            :'source_data' => :'ImportRowCore',
            :'created_at' => :'Integer',
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Imports::PublicImportError` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Imports::PublicImportError`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'error_type')
            self.error_type = attributes[:'error_type']
          end

          if attributes.key?(:'object_type')
            self.object_type = attributes[:'object_type']
          end

          if attributes.key?(:'invalid_value')
            self.invalid_value = attributes[:'invalid_value']
          end

          if attributes.key?(:'extra_context')
            self.extra_context = attributes[:'extra_context']
          end

          if attributes.key?(:'object_type_id')
            self.object_type_id = attributes[:'object_type_id']
          end

          if attributes.key?(:'known_column_number')
            self.known_column_number = attributes[:'known_column_number']
          end

          if attributes.key?(:'source_data')
            self.source_data = attributes[:'source_data']
          end

          if attributes.key?(:'created_at')
            self.created_at = attributes[:'created_at']
          end

          if attributes.key?(:'id')
            self.id = attributes[:'id']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @error_type.nil?
            invalid_properties.push('invalid value for "error_type", error_type cannot be nil.')
          end

          if @known_column_number.nil?
            invalid_properties.push('invalid value for "known_column_number", known_column_number cannot be nil.')
          end

          if @source_data.nil?
            invalid_properties.push('invalid value for "source_data", source_data cannot be nil.')
          end

          if @created_at.nil?
            invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
          end

          if @id.nil?
            invalid_properties.push('invalid value for "id", id cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @error_type.nil?
          error_type_validator = EnumAttributeValidator.new('String', ["INCORRECT_NUMBER_OF_COLUMNS", "INVALID_OBJECT_ID", "INVALID_ASSOCIATION_IDENTIFIER", "NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER", "MULTIPLE_COMPANIES_WITH_THIS_DOMAIN", "PROPERTY_DEFINITION_NOT_FOUND", "PROPERTY_VALUE_NOT_FOUND", "COULD_NOT_FIND_OWNER", "MULTIPLE_OWNERS_FOUND", "COULD_NOT_PARSE_NUMBER", "COULD_NOT_PARSE_DATE", "COULD_NOT_PARSE_TERM", "OUTSIDE_VALID_TIME_RANGE", "OUTSIDE_VALID_TERM_RANGE", "COULD_NOT_PARSE_ROW", "INVALID_ENUMERATION_OPTION", "AMBIGUOUS_ENUMERATION_OPTION", "FAILED_VALIDATION", "FAILED_TO_CREATE_ASSOCIATION", "FILE_NOT_FOUND", "INVALID_COLUMN_CONFIGURATION", "INVALID_FILE_TYPE", "INVALID_SPREADSHEET", "INVALID_SHEET_COUNT", "FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES", "UNKNOWN_BAD_REQUEST", "GDPR_BLACKLISTED_EMAIL", "DUPLICATE_ASSOCIATION_ID", "LIMIT_EXCEEDED", "INVALID_ALTERNATE_ID", "INVALID_EMAIL", "INVALID_DOMAIN", "DUPLICATE_ROW_CONTENT", "INVALID_NUMBER_SIZE", "UNKNOWN_ERROR", "FAILED_TO_OPT_OUT_CONTACT", "INVALID_REQUIRED_PROPERTY", "DUPLICATE_ALTERNATE_ID", "DUPLICATE_OBJECT_ID", "DUPLICATE_UNIQUE_PROPERTY_VALUE"])
          return false unless error_type_validator.valid?(@error_type)
          object_type_validator = EnumAttributeValidator.new('String', ["CONTACT", "COMPANY", "DEAL", "ENGAGEMENT", "TICKET", "OWNER", "PRODUCT", "LINE_ITEM", "BET_DELIVERABLE_SERVICE", "CONTENT", "CONVERSATION", "BET_ALERT", "PORTAL", "QUOTE", "FORM_SUBMISSION_INBOUNDDB", "QUOTA", "UNSUBSCRIBE", "COMMUNICATION", "FEEDBACK_SUBMISSION", "ATTRIBUTION", "SALESFORCE_SYNC_ERROR", "RESTORABLE_CRM_OBJECT", "HUB", "LANDING_PAGE", "PRODUCT_OR_FOLDER", "TASK", "FORM", "MARKETING_EMAIL", "AD_ACCOUNT", "AD_CAMPAIGN", "AD_GROUP", "AD", "KEYWORD", "CAMPAIGN", "SOCIAL_CHANNEL", "SOCIAL_POST", "SITE_PAGE", "BLOG_POST", "IMPORT", "EXPORT", "CTA", "TASK_TEMPLATE", "AUTOMATION_PLATFORM_FLOW", "OBJECT_LIST", "NOTE", "MEETING_EVENT", "CALL", "EMAIL", "PUBLISHING_TASK", "CONVERSATION_SESSION", "CONTACT_CREATE_ATTRIBUTION", "INVOICE", "MARKETING_EVENT", "CONVERSATION_INBOX", "CHATFLOW", "MEDIA_BRIDGE", "SEQUENCE", "SEQUENCE_STEP", "FORECAST", "SNIPPET", "TEMPLATE", "DEAL_CREATE_ATTRIBUTION", "QUOTE_TEMPLATE", "QUOTE_MODULE", "QUOTE_MODULE_FIELD", "QUOTE_FIELD", "SEQUENCE_ENROLLMENT", "SUBSCRIPTION", "ACCEPTANCE_TEST", "SOCIAL_BROADCAST", "DEAL_SPLIT", "DEAL_REGISTRATION", "GOAL_TARGET", "GOAL_TARGET_GROUP", "PORTAL_OBJECT_SYNC_MESSAGE", "FILE_MANAGER_FILE", "FILE_MANAGER_FOLDER", "SEQUENCE_STEP_ENROLLMENT", "APPROVAL", "APPROVAL_STEP", "CTA_VARIANT", "UNKNOWN"])
          return false unless object_type_validator.valid?(@object_type)
          return false if @known_column_number.nil?
          return false if @source_data.nil?
          return false if @created_at.nil?
          return false if @id.nil?
          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] error_type Object to be assigned
        def error_type=(error_type)
          validator = EnumAttributeValidator.new('String', ["INCORRECT_NUMBER_OF_COLUMNS", "INVALID_OBJECT_ID", "INVALID_ASSOCIATION_IDENTIFIER", "NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER", "MULTIPLE_COMPANIES_WITH_THIS_DOMAIN", "PROPERTY_DEFINITION_NOT_FOUND", "PROPERTY_VALUE_NOT_FOUND", "COULD_NOT_FIND_OWNER", "MULTIPLE_OWNERS_FOUND", "COULD_NOT_PARSE_NUMBER", "COULD_NOT_PARSE_DATE", "COULD_NOT_PARSE_TERM", "OUTSIDE_VALID_TIME_RANGE", "OUTSIDE_VALID_TERM_RANGE", "COULD_NOT_PARSE_ROW", "INVALID_ENUMERATION_OPTION", "AMBIGUOUS_ENUMERATION_OPTION", "FAILED_VALIDATION", "FAILED_TO_CREATE_ASSOCIATION", "FILE_NOT_FOUND", "INVALID_COLUMN_CONFIGURATION", "INVALID_FILE_TYPE", "INVALID_SPREADSHEET", "INVALID_SHEET_COUNT", "FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES", "UNKNOWN_BAD_REQUEST", "GDPR_BLACKLISTED_EMAIL", "DUPLICATE_ASSOCIATION_ID", "LIMIT_EXCEEDED", "INVALID_ALTERNATE_ID", "INVALID_EMAIL", "INVALID_DOMAIN", "DUPLICATE_ROW_CONTENT", "INVALID_NUMBER_SIZE", "UNKNOWN_ERROR", "FAILED_TO_OPT_OUT_CONTACT", "INVALID_REQUIRED_PROPERTY", "DUPLICATE_ALTERNATE_ID", "DUPLICATE_OBJECT_ID", "DUPLICATE_UNIQUE_PROPERTY_VALUE"])
          unless validator.valid?(error_type)
            fail ArgumentError, "invalid value for \"error_type\", must be one of #{validator.allowable_values}."
          end
          @error_type = error_type
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] object_type Object to be assigned
        def object_type=(object_type)
          validator = EnumAttributeValidator.new('String', ["CONTACT", "COMPANY", "DEAL", "ENGAGEMENT", "TICKET", "OWNER", "PRODUCT", "LINE_ITEM", "BET_DELIVERABLE_SERVICE", "CONTENT", "CONVERSATION", "BET_ALERT", "PORTAL", "QUOTE", "FORM_SUBMISSION_INBOUNDDB", "QUOTA", "UNSUBSCRIBE", "COMMUNICATION", "FEEDBACK_SUBMISSION", "ATTRIBUTION", "SALESFORCE_SYNC_ERROR", "RESTORABLE_CRM_OBJECT", "HUB", "LANDING_PAGE", "PRODUCT_OR_FOLDER", "TASK", "FORM", "MARKETING_EMAIL", "AD_ACCOUNT", "AD_CAMPAIGN", "AD_GROUP", "AD", "KEYWORD", "CAMPAIGN", "SOCIAL_CHANNEL", "SOCIAL_POST", "SITE_PAGE", "BLOG_POST", "IMPORT", "EXPORT", "CTA", "TASK_TEMPLATE", "AUTOMATION_PLATFORM_FLOW", "OBJECT_LIST", "NOTE", "MEETING_EVENT", "CALL", "EMAIL", "PUBLISHING_TASK", "CONVERSATION_SESSION", "CONTACT_CREATE_ATTRIBUTION", "INVOICE", "MARKETING_EVENT", "CONVERSATION_INBOX", "CHATFLOW", "MEDIA_BRIDGE", "SEQUENCE", "SEQUENCE_STEP", "FORECAST", "SNIPPET", "TEMPLATE", "DEAL_CREATE_ATTRIBUTION", "QUOTE_TEMPLATE", "QUOTE_MODULE", "QUOTE_MODULE_FIELD", "QUOTE_FIELD", "SEQUENCE_ENROLLMENT", "SUBSCRIPTION", "ACCEPTANCE_TEST", "SOCIAL_BROADCAST", "DEAL_SPLIT", "DEAL_REGISTRATION", "GOAL_TARGET", "GOAL_TARGET_GROUP", "PORTAL_OBJECT_SYNC_MESSAGE", "FILE_MANAGER_FILE", "FILE_MANAGER_FOLDER", "SEQUENCE_STEP_ENROLLMENT", "APPROVAL", "APPROVAL_STEP", "CTA_VARIANT", "UNKNOWN"])
          unless validator.valid?(object_type)
            fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
          end
          @object_type = object_type
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              error_type == o.error_type &&
              object_type == o.object_type &&
              invalid_value == o.invalid_value &&
              extra_context == o.extra_context &&
              object_type_id == o.object_type_id &&
              known_column_number == o.known_column_number &&
              source_data == o.source_data &&
              created_at == o.created_at &&
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
          [error_type, object_type, invalid_value, extra_context, object_type_id, known_column_number, source_data, created_at, id].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def self.build_from_hash(attributes)
          new.build_from_hash(attributes)
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)
          attributes = attributes.transform_keys(&:to_sym)
          self.class.openapi_types.each_pair do |key, type|
            if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
              self.send("#{key}=", nil)
            elsif type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :Time
            Time.parse(value)
          when :Date
            Date.parse(value)
          when :String
            value.to_s
          when :Integer
            value.to_i
          when :Float
            value.to_f
          when :Boolean
            if value.to_s =~ /\A(true|t|yes|y|1)\z/i
              true
            else
              false
            end
          when :Object
            # generic object (usually a Hash), return directly
            value
          when /\AArray<(?<inner_type>.+)>\z/
            inner_type = Regexp.last_match[:inner_type]
            value.map { |v| _deserialize(inner_type, v) }
          when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
            k_type = Regexp.last_match[:k_type]
            v_type = Regexp.last_match[:v_type]
            {}.tap do |hash|
              value.each do |k, v|
                hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
              end
            end
          else # model
            # models (e.g. Pet) or oneOf
            klass = Hubspot::Crm::Imports.const_get(type)
            klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
          end
        end

        # Returns the string representation of the object
        # @return [String] String presentation of the object
        def to_s
          to_hash.to_s
        end

        # to_body is an alias to to_hash (backward compatibility)
        # @return [Hash] Returns the object in the form of hash
        def to_body
          to_hash
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

        # Outputs non-array value in the form of hash
        # For object, use to_hash. Otherwise, just return the value
        # @param [Object] value Any valid value
        # @return [Hash] Returns the value in the form of hash
        def _to_hash(value)
          if value.is_a?(Array)
            value.compact.map { |v| _to_hash(v) }
          elsif value.is_a?(Hash)
            {}.tap do |hash|
              value.each { |k, v| hash[k] = _to_hash(v) }
            end
          elsif value.respond_to? :to_hash
            value.to_hash
          else
            value
          end
        end

      end

    end
  end
end

=begin
#CRM Objects

#CRM objects such as companies, contacts, deals, line items, products, tickets, and quotes are native objects in HubSpot’s CRM. These core building blocks support custom properties, store critical information, and play a central role in the HubSpot application.  ## Supported Object Types  This API provides access to collections of CRM objects, which return a map of property names to values. Each object type has its own set of default properties, which can be found by exploring the [CRM Object Properties API](https://developers.hubspot.com/docs/methods/crm-properties/crm-properties-overview).  |Object Type |Properties returned by default | |--|--| | `companies` | `name`, `domain` | | `contacts` | `firstname`, `lastname`, `email` | | `deals` | `dealname`, `amount`, `closedate`, `pipeline`, `dealstage` | | `products` | `name`, `description`, `price` | | `tickets` | `content`, `hs_pipeline`, `hs_pipeline_stage`, `hs_ticket_category`, `hs_ticket_priority`, `subject` |  Find a list of all properties for an object type using the [CRM Object Properties](https://developers.hubspot.com/docs/methods/crm-properties/get-properties) API. e.g. `GET https://api.hubapi.com/properties/v2/companies/properties`. Change the properties returned in the response using the `properties` array in the request body.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Crm
    module Objects
      class BasicApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Archive
        # Move an Object identified by `{objectId}` to the recycling bin.
        # @param object_type [String] 
        # @param object_id [String] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(object_type, object_id, opts = {})
          archive_with_http_info(object_type, object_id, opts)
          nil
        end

        # Archive
        # Move an Object identified by &#x60;{objectId}&#x60; to the recycling bin.
        # @param object_type [String] 
        # @param object_id [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(object_type, object_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.archive ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling BasicApi.archive"
          end
          # verify the required parameter 'object_id' is set
          if @api_client.config.client_side_validation && object_id.nil?
            fail ArgumentError, "Missing the required parameter 'object_id' when calling BasicApi.archive"
          end
          # resource path
          local_var_path = '/{objectType}/{objectId}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/')).sub('{' + 'objectId' + '}', CGI.escape(object_id.to_s).gsub('%2F', '/'))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create
        # Create a CRM object with the given properties and return a copy of the object, including the ID. Documentation and examples for creating native objects is provided.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [SimplePublicObjectInput] :body 
        # @return [SimplePublicObject]
        def create(object_type, opts = {})
          data, _status_code, _headers = create_with_http_info(object_type, opts)
          data
        end

        # Create
        # Create a CRM object with the given properties and return a copy of the object, including the ID. Documentation and examples for creating native objects is provided.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [SimplePublicObjectInput] :body 
        # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
        def create_with_http_info(object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.create ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling BasicApi.create"
          end
          # resource path
          local_var_path = '/{objectType}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/'))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

          # return_type
          return_type = opts[:return_type] || 'SimplePublicObject' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Read
        # Read an Object identified by `{objectId}`. `{objectId}` refers to the internal object ID by default, or optionally any unique property value as specified by the `idProperty` query param.  Control what is returned via the `properties` query param.
        # @param object_type [String] 
        # @param object_id [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @option opts [String] :id_property The name of a property whose values are unique for this object type
        # @return [SimplePublicObject]
        def get_by_id(object_type, object_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(object_type, object_id, opts)
          data
        end

        # Read
        # Read an Object identified by &#x60;{objectId}&#x60;. &#x60;{objectId}&#x60; refers to the internal object ID by default, or optionally any unique property value as specified by the &#x60;idProperty&#x60; query param.  Control what is returned via the &#x60;properties&#x60; query param.
        # @param object_type [String] 
        # @param object_id [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @option opts [String] :id_property The name of a property whose values are unique for this object type
        # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
        def get_by_id_with_http_info(object_type, object_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.get_by_id ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling BasicApi.get_by_id"
          end
          # verify the required parameter 'object_id' is set
          if @api_client.config.client_side_validation && object_id.nil?
            fail ArgumentError, "Missing the required parameter 'object_id' when calling BasicApi.get_by_id"
          end
          # resource path
          local_var_path = '/{objectType}/{objectId}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/')).sub('{' + 'objectId' + '}', CGI.escape(object_id.to_s).gsub('%2F', '/'))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?
          query_params[:'associations'] = @api_client.build_collection_param(opts[:'associations'], :multi) if !opts[:'associations'].nil?
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?
          query_params[:'idProperty'] = opts[:'id_property'] if !opts[:'id_property'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'SimplePublicObject' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # List
        # Read a page of objects. Control what is returned via the `properties` query param.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [Integer] :limit The maximum number of results to display per page. (default to 10)
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [CollectionResponseSimplePublicObject]
        def get_page(object_type, opts = {})
          data, _status_code, _headers = get_page_with_http_info(object_type, opts)
          data
        end

        # List
        # Read a page of objects. Control what is returned via the &#x60;properties&#x60; query param.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [Integer] :limit The maximum number of results to display per page.
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [Array<(CollectionResponseSimplePublicObject, Integer, Hash)>] CollectionResponseSimplePublicObject data, response status code and response headers
        def get_page_with_http_info(object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.get_page ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling BasicApi.get_page"
          end
          # resource path
          local_var_path = '/{objectType}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/'))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?
          query_params[:'associations'] = @api_client.build_collection_param(opts[:'associations'], :multi) if !opts[:'associations'].nil?
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'CollectionResponseSimplePublicObject' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update
        # Perform a partial update of an Object identified by `{objectId}`. Provided property values will be overwritten. Read-only and non-existent properties will be ignored. Properties values can be cleared by passing an empty string.
        # @param object_type [String] 
        # @param object_id [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [SimplePublicObjectInput] :body 
        # @return [SimplePublicObject]
        def update(object_type, object_id, opts = {})
          data, _status_code, _headers = update_with_http_info(object_type, object_id, opts)
          data
        end

        # Update
        # Perform a partial update of an Object identified by &#x60;{objectId}&#x60;. Provided property values will be overwritten. Read-only and non-existent properties will be ignored. Properties values can be cleared by passing an empty string.
        # @param object_type [String] 
        # @param object_id [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [SimplePublicObjectInput] :body 
        # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
        def update_with_http_info(object_type, object_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.update ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling BasicApi.update"
          end
          # verify the required parameter 'object_id' is set
          if @api_client.config.client_side_validation && object_id.nil?
            fail ArgumentError, "Missing the required parameter 'object_id' when calling BasicApi.update"
          end
          # resource path
          local_var_path = '/{objectType}/{objectId}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/')).sub('{' + 'objectId' + '}', CGI.escape(object_id.to_s).gsub('%2F', '/'))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

          # return_type
          return_type = opts[:return_type] || 'SimplePublicObject' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
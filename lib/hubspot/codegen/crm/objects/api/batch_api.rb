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
      class BatchApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Archive a batch of objects by ID
        # Archive a list of objects given a collection of IDs. This method will return a `204 No Content` response on success regardless of the initial state of the object (e.g. active, already archived, non-existent).
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [BatchInputSimplePublicObjectId] :body 
        # @return [nil]
        def archive_batch(object_type, opts = {})
          archive_batch_with_http_info(object_type, opts)
          nil
        end

        # Archive a batch of objects by ID
        # Archive a list of objects given a collection of IDs. This method will return a &#x60;204 No Content&#x60; response on success regardless of the initial state of the object (e.g. active, already archived, non-existent).
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [BatchInputSimplePublicObjectId] :body 
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_batch_with_http_info(object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BatchApi.archive_batch ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling BatchApi.archive_batch"
          end
          # resource path
          local_var_path = '/{objectType}/batch/archive'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/'))

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

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BatchApi#archive_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create a batch of objects
        # Create a batch of objects. This follows the same rules as creating an individual object.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [BatchInputSimplePublicObjectInput] :body 
        # @return [BatchResponseSimplePublicObject]
        def create_batch(object_type, opts = {})
          data, _status_code, _headers = create_batch_with_http_info(object_type, opts)
          data
        end

        # Create a batch of objects
        # Create a batch of objects. This follows the same rules as creating an individual object.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [BatchInputSimplePublicObjectInput] :body 
        # @return [Array<(BatchResponseSimplePublicObject, Integer, Hash)>] BatchResponseSimplePublicObject data, response status code and response headers
        def create_batch_with_http_info(object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BatchApi.create_batch ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling BatchApi.create_batch"
          end
          # resource path
          local_var_path = '/{objectType}/batch/create'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/'))

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
          return_type = opts[:return_type] || 'BatchResponseSimplePublicObject' 

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
            @api_client.config.logger.debug "API called: BatchApi#create_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Read a batch of objects by internal ID, or unique property values
        # Read a list of objects given a collection of IDs. Use the `properties` request body property to control which properties are returned.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @option opts [BatchReadInputSimplePublicObjectId] :body 
        # @return [BatchResponseSimplePublicObject]
        def read_batch(object_type, opts = {})
          data, _status_code, _headers = read_batch_with_http_info(object_type, opts)
          data
        end

        # Read a batch of objects by internal ID, or unique property values
        # Read a list of objects given a collection of IDs. Use the &#x60;properties&#x60; request body property to control which properties are returned.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @option opts [BatchReadInputSimplePublicObjectId] :body 
        # @return [Array<(BatchResponseSimplePublicObject, Integer, Hash)>] BatchResponseSimplePublicObject data, response status code and response headers
        def read_batch_with_http_info(object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BatchApi.read_batch ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling BatchApi.read_batch"
          end
          # resource path
          local_var_path = '/{objectType}/batch/read'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/'))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

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
          return_type = opts[:return_type] || 'BatchResponseSimplePublicObject' 

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
            @api_client.config.logger.debug "API called: BatchApi#read_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update a batch of objects
        # Perform a partial upate on a batch of objects. This follows the same rules as performing partial updates on an individual object.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [BatchInputSimplePublicObjectBatchInput] :body 
        # @return [BatchResponseSimplePublicObject]
        def update_batch(object_type, opts = {})
          data, _status_code, _headers = update_batch_with_http_info(object_type, opts)
          data
        end

        # Update a batch of objects
        # Perform a partial upate on a batch of objects. This follows the same rules as performing partial updates on an individual object.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [BatchInputSimplePublicObjectBatchInput] :body 
        # @return [Array<(BatchResponseSimplePublicObject, Integer, Hash)>] BatchResponseSimplePublicObject data, response status code and response headers
        def update_batch_with_http_info(object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BatchApi.update_batch ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling BatchApi.update_batch"
          end
          # resource path
          local_var_path = '/{objectType}/batch/update'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s).gsub('%2F', '/'))

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
          return_type = opts[:return_type] || 'BatchResponseSimplePublicObject' 

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
            @api_client.config.logger.debug "API called: BatchApi#update_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
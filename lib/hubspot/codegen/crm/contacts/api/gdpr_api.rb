=begin
#Contacts

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Contacts
      class GDPRApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # DELETE
        # Permanently delete a contact by email address and all associated content to follow GDPR. If contact isn't found, blacklists an email address from being used in the future.
        # @param email [String] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def purge_by_email(email, opts = {})
          purge_by_email_with_http_info(email, opts)
          nil
        end

        # DELETE
        # Permanently delete a contact by email address and all associated content to follow GDPR. If contact isn&#39;t found, blacklists an email address from being used in the future.
        # @param email [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def purge_by_email_with_http_info(email, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GDPRApi.purge_by_email ...'
          end
          # verify the required parameter 'email' is set
          if @api_client.config.client_side_validation && email.nil?
            fail ArgumentError, "Missing the required parameter 'email' when calling GDPRApi.purge_by_email"
          end
          # resource path
          local_var_path = '/crm/v3/objects/gdpr/contacts/email/{email}'.sub('{' + 'email' + '}', CGI.escape(email.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

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
            @api_client.config.logger.debug "API called: GDPRApi#purge_by_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # DELETE
        # Permanently delete a contact by id and all associated content to follow GDPR
        # @param contact_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def purge_by_id(contact_id, opts = {})
          purge_by_id_with_http_info(contact_id, opts)
          nil
        end

        # DELETE
        # Permanently delete a contact by id and all associated content to follow GDPR
        # @param contact_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def purge_by_id_with_http_info(contact_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GDPRApi.purge_by_id ...'
          end
          # verify the required parameter 'contact_id' is set
          if @api_client.config.client_side_validation && contact_id.nil?
            fail ArgumentError, "Missing the required parameter 'contact_id' when calling GDPRApi.purge_by_id"
          end
          # resource path
          local_var_path = '/crm/v3/objects/gdpr/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

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
            @api_client.config.logger.debug "API called: GDPRApi#purge_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end

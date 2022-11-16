=begin
#Marketing Events Extension

#These APIs allow you to interact with HubSpot's Marketing Events Extension. It allows you to: * Create, Read or update Marketing Event information in HubSpot * Specify whether a HubSpot contact has registered, attended or cancelled a registration to a Marketing Event. * Specify a URL that can be called to get the details of a Marketing Event. 

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Marketing
    module Events
      class SettingsExternalApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # @param app_id [Integer] 
        # @param event_detail_settings_url [EventDetailSettingsUrl] 
        # @param [Hash] opts the optional parameters
        # @return [EventDetailSettings]
        def create(app_id, event_detail_settings_url, opts = {})
          data, _status_code, _headers = create_with_http_info(app_id, event_detail_settings_url, opts)
          data
        end

        # @param app_id [Integer] 
        # @param event_detail_settings_url [EventDetailSettingsUrl] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(EventDetailSettings, Integer, Hash)>] EventDetailSettings data, response status code and response headers
        def create_with_http_info(app_id, event_detail_settings_url, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: SettingsExternalApi.create ...'
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling SettingsExternalApi.create"
          end
          # verify the required parameter 'event_detail_settings_url' is set
          if @api_client.config.client_side_validation && event_detail_settings_url.nil?
            fail ArgumentError, "Missing the required parameter 'event_detail_settings_url' when calling SettingsExternalApi.create"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/{appId}/settings'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          content_type = @api_client.select_header_content_type(['application/json'])
          if !content_type.nil?
              header_params['Content-Type'] = content_type
          end

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body] || @api_client.object_to_http_body(event_detail_settings_url)

          # return_type
          return_type = opts[:debug_return_type] || 'EventDetailSettings'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['developer_hapikey', 'hapikey']

          new_options = opts.merge(
            :operation => :"SettingsExternalApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: SettingsExternalApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # @param app_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [EventDetailSettings]
        def get_all(app_id, opts = {})
          data, _status_code, _headers = get_all_with_http_info(app_id, opts)
          data
        end

        # @param app_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(EventDetailSettings, Integer, Hash)>] EventDetailSettings data, response status code and response headers
        def get_all_with_http_info(app_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: SettingsExternalApi.get_all ...'
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling SettingsExternalApi.get_all"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/{appId}/settings'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'EventDetailSettings'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['developer_hapikey', 'hapikey']

          new_options = opts.merge(
            :operation => :"SettingsExternalApi.get_all",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: SettingsExternalApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end

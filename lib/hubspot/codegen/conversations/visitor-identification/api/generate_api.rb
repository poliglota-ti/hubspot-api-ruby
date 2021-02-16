=begin
#Visitor Identification

#The Visitor Identification API allows you to pass identification information to the HubSpot chat widget for otherwise unknown visitors that were verified by your own authentication system.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Conversations
    module VisitorIdentification
      class GenerateApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Generate a token
        # Generates a new visitor identification token. This token will be unique every time this endpoint is called, even if called with the same email address. This token is temporary and will expire after 12 hours
        # @param identification_token_generation_request [IdentificationTokenGenerationRequest] 
        # @param [Hash] opts the optional parameters
        # @return [IdentificationTokenResponse]
        def post_visitor_identification_v3_tokens_create(identification_token_generation_request, opts = {})
          data, _status_code, _headers = post_visitor_identification_v3_tokens_create_with_http_info(identification_token_generation_request, opts)
          data
        end

        # Generate a token
        # Generates a new visitor identification token. This token will be unique every time this endpoint is called, even if called with the same email address. This token is temporary and will expire after 12 hours
        # @param identification_token_generation_request [IdentificationTokenGenerationRequest] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(IdentificationTokenResponse, Integer, Hash)>] IdentificationTokenResponse data, response status code and response headers
        def post_visitor_identification_v3_tokens_create_with_http_info(identification_token_generation_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GenerateApi.post_visitor_identification_v3_tokens_create ...'
          end
          # verify the required parameter 'identification_token_generation_request' is set
          if @api_client.config.client_side_validation && identification_token_generation_request.nil?
            fail ArgumentError, "Missing the required parameter 'identification_token_generation_request' when calling GenerateApi.post_visitor_identification_v3_tokens_create"
          end
          # resource path
          local_var_path = '/conversations/v3/visitor-identification/tokens/create'

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] || @api_client.object_to_http_body(identification_token_generation_request) 

          # return_type
          return_type = opts[:return_type] || 'IdentificationTokenResponse' 

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
            @api_client.config.logger.debug "API called: GenerateApi#post_visitor_identification_v3_tokens_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end

=begin
#Quotes

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Quotes::BatchApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BatchApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Quotes::BatchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BatchApi' do
    it 'should create an instance of BatchApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Quotes::BatchApi)
    end
  end

  # unit tests for read
  # Read a batch of quotes by internal ID, or unique property values
  # @param batch_read_input_simple_public_object_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @return [BatchResponseSimplePublicObject]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

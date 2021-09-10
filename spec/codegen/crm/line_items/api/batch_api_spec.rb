=begin
#Line Items

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::LineItems::BatchApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BatchApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::LineItems::BatchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BatchApi' do
    it 'should create an instance of BatchApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::LineItems::BatchApi)
    end
  end

  # unit tests for archive
  # Archive a batch of line items by ID
  # @param batch_input_simple_public_object_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Create a batch of line items
  # @param batch_input_simple_public_object_input 
  # @param [Hash] opts the optional parameters
  # @return [BatchResponseSimplePublicObject]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Read a batch of line items by internal ID, or unique property values
  # @param batch_read_input_simple_public_object_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @return [BatchResponseSimplePublicObject]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a batch of line items
  # @param batch_input_simple_public_object_batch_input 
  # @param [Hash] opts the optional parameters
  # @return [BatchResponseSimplePublicObject]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

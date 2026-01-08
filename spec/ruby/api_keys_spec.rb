# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::ApiKeys do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:api_keys) { client.api_keys }

  describe '#list' do
    it 'lists all API keys' do
      stub_request(:get, "https://api.unsent.dev/v1/api-keys")
        .to_return(status: 200, body: [{ id: '1', name: 'Test Key' }].to_json)

      data, error = api_keys.list
      expect(error).to be_nil
      expect(data).to be_an(Array)
      expect(data.first['name']).to eq('Test Key')
    end
  end

  describe '#create' do
    it 'creates a new API key' do
      payload = { name: 'New Key', permission: 'SENDING' }
      stub_request(:post, "https://api.unsent.dev/v1/api-keys")
        .with(body: payload.to_json)
        .to_return(status: 200, body: { id: '123', key: 'un_xxx' }.to_json)

      data, error = api_keys.create(payload)
      expect(error).to be_nil
      expect(data['id']).to eq('123')
    end
  end

  describe '#delete' do
    it 'deletes an API key' do
      stub_request(:delete, "https://api.unsent.dev/v1/api-keys/123")
        .to_return(status: 200, body: { success: true }.to_json)

      data, error = api_keys.delete('123')
      expect(error).to be_nil
      expect(data['success']).to be true
    end
  end
end

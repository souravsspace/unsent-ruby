# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Webhooks do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:webhooks) { client.webhooks }

  describe '#list' do
    it 'lists all webhooks' do
      stub_request(:get, "https://api.unsent.dev/v1/webhooks")
        .to_return(status: 200, body: [{ id: '1', url: 'https://example.com' }].to_json)

      data, error = webhooks.list
      expect(error).to be_nil
      expect(data).to be_an(Array)
    end
  end

  describe '#create' do
    it 'creates a new webhook' do
      payload = { url: 'https://example.com/hook', events: ['email.sent'] }
      stub_request(:post, "https://api.unsent.dev/v1/webhooks")
        .with(body: payload.to_json)
        .to_return(status: 200, body: { id: '123' }.to_json)

      data, error = webhooks.create(payload)
      expect(error).to be_nil
      expect(data['id']).to eq('123')
    end
  end

  describe '#update' do
    it 'updates a webhook' do
      payload = { url: 'https://example.com/updated' }
      stub_request(:patch, "https://api.unsent.dev/v1/webhooks/123")
        .with(body: payload.to_json)
        .to_return(status: 200, body: { success: true }.to_json)

      data, error = webhooks.update('123', payload)
      expect(error).to be_nil
      expect(data['success']).to be true
    end
  end

  describe '#delete' do
    it 'deletes a webhook' do
      stub_request(:delete, "https://api.unsent.dev/v1/webhooks/123")
        .to_return(status: 200, body: { success: true }.to_json)

      data, error = webhooks.delete('123')
      expect(error).to be_nil
      expect(data['success']).to be true
    end
  end
end

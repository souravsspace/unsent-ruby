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

  describe '#get' do
    it 'gets a specific webhook by ID' do
      webhook_data = {
        id: '123',
        url: 'https://example.com/hook',
        description: 'Test webhook',
        eventTypes: ['email.sent', 'email.delivered'],
        status: 'active',
        secret: 'secret_key',
        apiVersion: 'v1',
        consecutiveFailures: 0,
        lastSuccessAt: nil,
        lastFailureAt: nil,
        createdAt: '2024-01-01T00:00:00Z',
        updatedAt: '2024-01-01T00:00:00Z',
        teamId: 'team_123',
        createdByUserId: 'user_123'
      }
      stub_request(:get, "https://api.unsent.dev/v1/webhooks/123")
        .to_return(status: 200, body: webhook_data.to_json)

      data, error = webhooks.get('123')
      expect(error).to be_nil
      expect(data['id']).to eq('123')
      expect(data['url']).to eq('https://example.com/hook')
      expect(data['status']).to eq('active')
    end
  end

  describe '#test' do
    it 'triggers a test event for a webhook' do
      webhook_call_data = {
        id: 'call_123',
        type: 'test',
        createdAt: '2024-01-01T00:00:00Z',
        updatedAt: '2024-01-01T00:00:00Z',
        teamId: 'team_123',
        status: 'completed',
        webhookId: '123',
        payload: '{"test": true}',
        attempt: 1,
        nextAttemptAt: nil,
        lastError: nil,
        responseStatus: 200,
        responseTimeMs: 150,
        responseText: 'OK'
      }
      stub_request(:post, "https://api.unsent.dev/v1/webhooks/123/test")
        .with(body: {}.to_json)
        .to_return(status: 200, body: webhook_call_data.to_json)

      data, error = webhooks.test('123')
      expect(error).to be_nil
      expect(data['id']).to eq('call_123')
      expect(data['type']).to eq('test')
      expect(data['status']).to eq('completed')
      expect(data['webhookId']).to eq('123')
    end
  end
end

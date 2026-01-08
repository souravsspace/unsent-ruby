# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Templates do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:templates) { client.templates }

  describe '#list' do
    it 'lists all templates' do
      stub_request(:get, "https://api.unsent.dev/v1/templates")
        .to_return(status: 200, body: [{ id: '1', name: 'Welcome' }].to_json)

      data, error = templates.list
      expect(error).to be_nil
      expect(data).to be_an(Array)
    end
  end

  describe '#create' do
    it 'creates a new template' do
      payload = { name: 'New Template', subject: 'Hello', html: '<p>Hi</p>' }
      stub_request(:post, "https://api.unsent.dev/v1/templates")
        .with(body: payload.to_json)
        .to_return(status: 200, body: { templateId: '123' }.to_json)

      data, error = templates.create(payload)
      expect(error).to be_nil
      expect(data['templateId']).to eq('123')
    end
  end

  describe '#get' do
    it 'gets a template by ID' do
      stub_request(:get, "https://api.unsent.dev/v1/templates/123")
        .to_return(status: 200, body: { id: '123', name: 'Welcome' }.to_json)

      data, error = templates.get('123')
      expect(error).to be_nil
      expect(data['id']).to eq('123')
    end
  end

  describe '#update' do
    it 'updates a template' do
      payload = { subject: 'Updated Subject' }
      stub_request(:patch, "https://api.unsent.dev/v1/templates/123")
        .with(body: payload.to_json)
        .to_return(status: 200, body: { success: true }.to_json)

      data, error = templates.update('123', payload)
      expect(error).to be_nil
      expect(data['success']).to be true
    end
  end

  describe '#delete' do
    it 'deletes a template' do
      stub_request(:delete, "https://api.unsent.dev/v1/templates/123")
        .to_return(status: 200, body: { success: true }.to_json)

      data, error = templates.delete('123')
      expect(error).to be_nil
      expect(data['success']).to be true
    end
  end
end

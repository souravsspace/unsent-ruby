# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Suppressions do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:suppressions) { client.suppressions }

  describe '#list' do
    it 'lists suppressions with query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/suppressions?page=1&limit=10&reason=MANUAL")
        .to_return(status: 200, body: { data: [], count: 0 }.to_json)

      data, error = suppressions.list(page: 1, limit: 10, reason: 'MANUAL')
      expect(error).to be_nil
      expect(data).to have_key('data')
    end

    it 'lists suppressions without query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/suppressions")
        .to_return(status: 200, body: { data: [] }.to_json)

      data, error = suppressions.list
      expect(error).to be_nil
    end
  end

  describe '#add' do
    it 'adds an email to suppression list' do
      payload = { email: 'test@example.com', reason: 'MANUAL' }
      stub_request(:post, "https://api.unsent.dev/v1/suppressions")
        .with(body: payload.to_json)
        .to_return(status: 200, body: { success: true }.to_json)

      data, error = suppressions.add(payload)
      expect(error).to be_nil
      expect(data['success']).to be true
    end
  end

  describe '#delete' do
    it 'removes an email from suppression list' do
      stub_request(:delete, "https://api.unsent.dev/v1/suppressions/email/test@example.com")
        .to_return(status: 200, body: { success: true }.to_json)

      data, error = suppressions.delete('test@example.com')
      expect(error).to be_nil
      expect(data['success']).to be true
    end
  end
end

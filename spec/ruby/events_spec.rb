# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Events do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:events) { client.events }

  describe '#list' do
    it 'lists events with pagination' do
      stub_request(:get, "https://api.unsent.dev/v1/events?page=1&limit=20")
        .to_return(
          status: 200,
          body: { data: [], count: 0, page: 1, limit: 20 }.to_json
        )

      data, error = events.list(page: 1, limit: 20)
      expect(error).to be_nil
      expect(data).to have_key('data')
      expect(data['page']).to eq(1)
      expect(data['limit']).to eq(20)
    end

    it 'lists events with status filter' do
      stub_request(:get, "https://api.unsent.dev/v1/events?status=DELIVERED")
        .to_return(
          status: 200,
          body: { data: [{ status: 'DELIVERED', type: 'email.delivered' }], count: 1 }.to_json
        )

      data, error = events.list(status: 'DELIVERED')
      expect(error).to be_nil
      expect(data).to have_key('data')
      expect(data['data']).to be_an(Array)
    end

    it 'lists events with date filter' do
      stub_request(:get, "https://api.unsent.dev/v1/events?startDate=2024-01-01")
        .to_return(
          status: 200,
          body: { data: [], count: 0 }.to_json
        )

      data, error = events.list(startDate: '2024-01-01')
      expect(error).to be_nil
      expect(data).to have_key('data')
    end

    it 'lists events with all query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/events?page=2&limit=50&status=SENT&startDate=2024-01-01")
        .to_return(
          status: 200,
          body: { data: [], count: 0, page: 2, limit: 50 }.to_json
        )

      data, error = events.list(page: 2, limit: 50, status: 'SENT', startDate: '2024-01-01')
      expect(error).to be_nil
      expect(data).to have_key('data')
    end

    it 'handles errors gracefully' do
      stub_request(:get, "https://api.unsent.dev/v1/events?page=1")
        .to_return(
          status: 400,
          body: { error: { code: 'BAD_REQUEST', message: 'Invalid parameters' } }.to_json
        )

      data, error = events.list(page: 1)
      expect(data).to be_nil
      expect(error).to have_key('code')
    end
  end
end

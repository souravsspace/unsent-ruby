# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Metrics do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:metrics) { client.metrics }

  describe '#get' do
    it 'retrieves metrics with pagination' do
      stub_request(:get, "https://api.unsent.dev/v1/metrics?page=1&limit=10")
        .to_return(
          status: 200,
          body: { data: [], count: 0, page: 1, limit: 10 }.to_json
        )

      data, error = metrics.get(page: 1, limit: 10)
      expect(error).to be_nil
      expect(data).to have_key('data')
      expect(data['page']).to eq(1)
      expect(data['limit']).to eq(10)
    end

    it 'retrieves metrics without query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/metrics")
        .to_return(
          status: 200,
          body: { data: [{ metric: 'delivery_rate', value: 98.5 }], count: 1 }.to_json
        )

      data, error = metrics.get
      expect(error).to be_nil
      expect(data).to have_key('data')
      expect(data['data']).to be_an(Array)
    end

    it 'handles errors when fetching metrics' do
      stub_request(:get, "https://api.unsent.dev/v1/metrics?page=999")
        .to_return(
          status: 404,
          body: { error: { code: 'NOT_FOUND', message: 'Page not found' } }.to_json
        )

      data, error = metrics.get(page: 999)
      expect(data).to be_nil
      expect(error).to have_key('code')
      expect(error['code']).to eq('NOT_FOUND')
    end
  end
end

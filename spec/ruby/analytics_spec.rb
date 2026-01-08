# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Analytics do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:analytics) { client.analytics }

  describe '#get' do
    it 'fetches analytics data' do
      stub_request(:get, "https://api.unsent.dev/v1/analytics")
        .to_return(status: 200, body: { sent: 100, delivered: 95 }.to_json)

      data, error = analytics.get
      expect(error).to be_nil
      expect(data['sent']).to eq(100)
      expect(data['delivered']).to eq(95)
    end
  end

  describe '#get_time_series' do
    it 'fetches time series data with query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/analytics/time-series?days=30&domain=example.com")
        .to_return(status: 200, body: { data: [] }.to_json)

      data, error = analytics.get_time_series(days: 30, domain: 'example.com')
      expect(error).to be_nil
      expect(data).to have_key('data')
    end

    it 'works without query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/analytics/time-series")
        .to_return(status: 200, body: { data: [] }.to_json)

      data, error = analytics.get_time_series
      expect(error).to be_nil
    end
  end

  describe '#get_reputation' do
    it 'fetches reputation data' do
      stub_request(:get, "https://api.unsent.dev/v1/analytics/reputation?domain=example.com")
        .to_return(status: 200, body: { score: 9.5 }.to_json)

      data, error = analytics.get_reputation(domain: 'example.com')
      expect(error).to be_nil
      expect(data['score']).to eq(9.5)
    end
  end
end

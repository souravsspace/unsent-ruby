# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Domains do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:domains) { client.domains }

  describe '#list' do
    it 'lists all domains' do
      stub_request(:get, "https://api.unsent.dev/v1/domains")
        .to_return(
          status: 200,
          body: { data: [{ id: 'domain_1', domain: 'example.com', status: 'verified' }], count: 1 }.to_json
        )

      data, error = domains.list
      expect(error).to be_nil
      expect(data).to have_key('data')
    end
  end

  describe '#create' do
    it 'creates a new domain' do
      stub_request(:post, "https://api.unsent.dev/v1/domains")
        .to_return(
          status: 200,
          body: { id: 'domain_1', domain: 'example.com', status: 'pending' }.to_json
        )

      data, error = domains.create(domain: 'example.com')
      expect(error).to be_nil
      expect(data).to have_key('id')
    end
  end

  describe '#get_analytics' do
    it 'retrieves analytics for a specific domain' do
      stub_request(:get, "https://api.unsent.dev/v1/domains/domain_123/analytics?days=30")
        .to_return(
          status: 200,
          body: { sent: 1000, delivered: 950, opened: 500, clicked: 200 }.to_json
        )

      data, error = domains.get_analytics('domain_123', days: 30)
      expect(error).to be_nil
      expect(data).to have_key('sent')
      expect(data).to have_key('delivered')
    end

    it 'retrieves analytics with date range' do
      stub_request(:get, "https://api.unsent.dev/v1/domains/domain_123/analytics?startDate=2024-01-01&endDate=2024-01-31")
        .to_return(
          status: 200,
          body: { sent: 500, delivered: 475 }.to_json
        )

      data, error = domains.get_analytics('domain_123', startDate: '2024-01-01', endDate: '2024-01-31')
      expect(error).to be_nil
      expect(data).to have_key('sent')
    end
  end

  describe '#get_stats' do
    it 'retrieves stats for a specific domain' do
      stub_request(:get, "https://api.unsent.dev/v1/domains/domain_123/stats?days=7")
        .to_return(
          status: 200,
          body: { bounceRate: 2.5, complaintsRate: 0.1, deliveryRate: 97.5 }.to_json
        )

      data, error = domains.get_stats('domain_123', days: 7)
      expect(error).to be_nil
      expect(data).to have_key('bounceRate')
      expect(data).to have_key('deliveryRate')
    end

    it 'retrieves stats with custom date range' do
      stub_request(:get, "https://api.unsent.dev/v1/domains/domain_123/stats?startDate=2024-01-01&endDate=2024-01-15")
        .to_return(
          status: 200,
          body: { bounceRate: 3.0, deliveryRate: 97.0 }.to_json
        )

      data, error = domains.get_stats('domain_123', startDate: '2024-01-01', endDate: '2024-01-15')
      expect(error).to be_nil
      expect(data).to have_key('bounceRate')
    end
  end

  describe '#verify' do
    it 'verifies a domain' do
      stub_request(:put, "https://api.unsent.dev/v1/domains/domain_123/verify")
        .to_return(
          status: 200,
          body: { id: 'domain_123', status: 'verified' }.to_json
        )

      data, error = domains.verify('domain_123')
      expect(error).to be_nil
      expect(data['status']).to eq('verified')
    end
  end

  describe '#get' do
    it 'retrieves a specific domain' do
      stub_request(:get, "https://api.unsent.dev/v1/domains/domain_123")
        .to_return(
          status: 200,
          body: { id: 'domain_123', domain: 'example.com', status: 'verified' }.to_json
        )

      data, error = domains.get('domain_123')
      expect(error).to be_nil
      expect(data).to have_key('id')
    end
  end

  describe '#delete' do
    it 'deletes a domain' do
      stub_request(:delete, "https://api.unsent.dev/v1/domains/domain_123")
        .to_return(
          status: 200,
          body: { success: true }.to_json
        )

      data, error = domains.delete('domain_123')
      expect(error).to be_nil
    end
  end
end

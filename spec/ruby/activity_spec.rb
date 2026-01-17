# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Activity do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:activity) { client.activity }

  describe '#get' do
    it 'retrieves activity feed with pagination' do
      stub_request(:get, "https://api.unsent.dev/v1/activity?page=1&limit=50")
        .to_return(
          status: 200,
          body: {
            data: [
              { id: 'act_1', type: 'email.sent', timestamp: '2024-01-01T00:00:00Z' }
            ],
            count: 1,
            page: 1,
            limit: 50
          }.to_json
        )

      data, error = activity.get(page: 1, limit: 50)
      expect(error).to be_nil
      expect(data).to have_key('data')
      expect(data['data']).to be_an(Array)
      expect(data['page']).to eq(1)
      expect(data['limit']).to eq(50)
    end

    it 'retrieves activity feed without query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/activity")
        .to_return(
          status: 200,
          body: { data: [], count: 0 }.to_json
        )

      data, error = activity.get
      expect(error).to be_nil
      expect(data).to have_key('data')
    end

    it 'handles rate limiting' do
      stub_request(:get, "https://api.unsent.dev/v1/activity")
        .to_return(
          status: 429,
          body: { error: { code: 'RATE_LIMIT_EXCEEDED', message: 'Too many requests' } }.to_json
        )

      data, error = activity.get
      expect(data).to be_nil
      expect(error).to have_key('code')
      expect(error['code']).to eq('RATE_LIMIT_EXCEEDED')
    end
  end
end

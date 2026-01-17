# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Stats do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:stats) { client.stats }

  describe '#get' do
    it 'retrieves statistics with pagination' do
      stub_request(:get, "https://api.unsent.dev/v1/stats?page=1&limit=10")
        .to_return(
          status: 200,
          body: { data: [], count: 0, page: 1, limit: 10 }.to_json
        )

      data, error = stats.get(page: 1, limit: 10)
      expect(error).to be_nil
      expect(data).to have_key('data')
      expect(data['page']).to eq(1)
      expect(data['limit']).to eq(10)
    end

    it 'retrieves statistics without query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/stats")
        .to_return(
          status: 200,
          body: {
            data: [
              { stat: 'total_sent', value: 1000 },
              { stat: 'total_delivered', value: 950 }
            ],
            count: 2
          }.to_json
        )

      data, error = stats.get
      expect(error).to be_nil
      expect(data).to have_key('data')
      expect(data['data']).to be_an(Array)
      expect(data['count']).to eq(2)
    end

    it 'handles authorization errors' do
      stub_request(:get, "https://api.unsent.dev/v1/stats")
        .to_return(
          status: 401,
          body: { error: { code: 'UNAUTHORIZED', message: 'Invalid token' } }.to_json
        )

      data, error = stats.get
      expect(data).to be_nil
      expect(error).to have_key('code')
      expect(error['code']).to eq('UNAUTHORIZED')
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::System do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:system) { client.system }

  describe '#health' do
    it 'checks API health status' do
      stub_request(:get, "https://api.unsent.dev/v1/health")
        .to_return(
          status: 200,
          body: { status: 'ok', uptime: 123456, timestamp: 1234567890 }.to_json
        )

      data, error = system.health
      expect(error).to be_nil
      expect(data).to have_key('status')
      expect(data['status']).to eq('ok')
      expect(data).to have_key('uptime')
      expect(data).to have_key('timestamp')
    end

    it 'handles health check errors' do
      stub_request(:get, "https://api.unsent.dev/v1/health")
        .to_return(status: 500, body: { error: { code: 'SERVER_ERROR', message: 'Internal error' } }.to_json)

      data, error = system.health
      expect(data).to be_nil
      expect(error).to have_key('code')
      expect(error['code']).to eq('SERVER_ERROR')
    end
  end

  describe '#version' do
    it 'retrieves API version information' do
      stub_request(:get, "https://api.unsent.dev/v1/version")
        .to_return(
          status: 200,
          body: {
            version: '1.0.0',
            environment: 'production',
            nodeVersion: 'v18.0.0',
            platform: 'linux',
            arch: 'x64',
            timestamp: '2024-01-01T00:00:00Z',
            versions: { node: 'v18.0.0' },
            memory: { rss: 1000, heapTotal: 2000, heapUsed: 1500, external: 100 }
          }.to_json
        )

      data, error = system.version
      expect(error).to be_nil
      expect(data).to have_key('version')
      expect(data['version']).to eq('1.0.0')
      expect(data).to have_key('environment')
      expect(data).to have_key('nodeVersion')
      expect(data).to have_key('memory')
    end
  end
end

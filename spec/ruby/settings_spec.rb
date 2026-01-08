# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Settings do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:settings) { client.settings }

  describe '#get' do
    it 'fetches account settings' do
      stub_request(:get, "https://api.unsent.dev/v1/settings")
        .to_return(status: 200, body: { webhook_url: 'https://example.com' }.to_json)

      data, error = settings.get
      expect(error).to be_nil
      expect(data).to have_key('webhook_url')
    end
  end
end

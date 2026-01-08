# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Campaigns do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:campaigns) { client.campaigns }

  describe '#list' do
    it 'lists all campaigns' do
      stub_request(:get, "https://api.unsent.dev/v1/campaigns")
        .to_return(status: 200, body: [{ id: '1', name: 'Newsletter' }].to_json)

      data, error = campaigns.list
      expect(error).to be_nil
      expect(data).to be_an(Array)
    end
  end
end

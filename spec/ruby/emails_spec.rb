# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Emails do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:emails) { client.emails }

  describe '#list' do
    it 'lists emails with query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/emails?page=1&limit=10")
        .to_return(status: 200, body: { data: [], count: 0 }.to_json)

      data, error = emails.list(page: 1, limit: 10)
      expect(error).to be_nil
      expect(data).to have_key('data')
    end

    it 'handles domainId as array' do
      stub_request(:get, "https://api.unsent.dev/v1/emails?domainId=123&domainId=456")
        .to_return(status: 200, body: { data: [] }.to_json)

      data, error = emails.list(domainId: ['123', '456'])
      expect(error).to be_nil
    end

    it 'handles domainId as string' do
      stub_request(:get, "https://api.unsent.dev/v1/emails?domainId=123")
        .to_return(status: 200, body: { data: [] }.to_json)

      data, error = emails.list(domainId: '123')
      expect(error).to be_nil
    end
  end

  describe '#get_complaints' do
    it 'fetches complaints with pagination' do
      stub_request(:get, "https://api.unsent.dev/v1/emails/complaints?page=1&limit=10")
        .to_return(status: 200, body: { data: [], count: 0 }.to_json)

      data, error = emails.get_complaints(page: 1, limit: 10)
      expect(error).to be_nil
      expect(data).to have_key('data')
    end
  end

  describe '#get_bounces' do
    it 'fetches bounces with pagination' do
      stub_request(:get, "https://api.unsent.dev/v1/emails/bounces?page=1&limit=10")
        .to_return(status: 200, body: { data: [], count: 0 }.to_json)

      data, error = emails.get_bounces(page: 1, limit: 10)
      expect(error).to be_nil
      expect(data).to have_key('data')
    end
  end

  describe '#get_unsubscribes' do
    it 'fetches unsubscribes with pagination' do
      stub_request(:get, "https://api.unsent.dev/v1/emails/unsubscribes?page=1&limit=10")
        .to_return(status: 200, body: { data: [], count: 0 }.to_json)

      data, error = emails.get_unsubscribes(page: 1, limit: 10)
      expect(error).to be_nil
      expect(data).to have_key('data')
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Contacts do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:contacts) { client.contacts }

  describe '#list' do
    it 'lists contacts in a book' do
      stub_request(:get, "https://api.unsent.dev/v1/contactBooks/book123/contacts?page=1&limit=10")
        .to_return(status: 200, body: [{ id: '1', email: 'test@example.com' }].to_json)

      data, error = contacts.list('book123', page: 1, limit: 10)
      expect(error).to be_nil
      expect(data).to be_an(Array)
    end

    it 'works without query parameters' do
      stub_request(:get, "https://api.unsent.dev/v1/contactBooks/book123/contacts")
        .to_return(status: 200, body: [].to_json)

      data, error = contacts.list('book123')
      expect(error).to be_nil
    end
  end
end

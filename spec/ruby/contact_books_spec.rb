# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::ContactBooks do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:contact_books) { client.contact_books }

  describe '#list' do
    it 'lists all contact books' do
      stub_request(:get, "https://api.unsent.dev/v1/contactBooks")
        .to_return(status: 200, body: [{ id: '1', name: 'My Book' }].to_json)

      data, error = contact_books.list
      expect(error).to be_nil
      expect(data).to be_an(Array)
    end
  end

  describe '#create' do
    it 'creates a new contact book' do
      payload = { name: 'New Book', emoji: '📕' }
      stub_request(:post, "https://api.unsent.dev/v1/contactBooks")
        .with(body: payload.to_json)
        .to_return(status: 200, body: { contactBookId: '123' }.to_json)

      data, error = contact_books.create(payload)
      expect(error).to be_nil
      expect(data['contactBookId']).to eq('123')
    end
  end

  describe '#get' do
    it 'gets a contact book by ID' do
      stub_request(:get, "https://api.unsent.dev/v1/contactBooks/123")
        .to_return(status: 200, body: { id: '123', name: 'My Book' }.to_json)

      data, error = contact_books.get('123')
      expect(error).to be_nil
      expect(data['id']).to eq('123')
    end
  end

  describe '#update' do
    it 'updates a contact book' do
      payload = { name: 'Updated Name' }
      stub_request(:patch, "https://api.unsent.dev/v1/contactBooks/123")
        .with(body: payload.to_json)
        .to_return(status: 200, body: { success: true }.to_json)

      data, error = contact_books.update('123', payload)
      expect(error).to be_nil
      expect(data['success']).to be true
    end
  end

  describe '#delete' do
    it 'deletes a contact book' do
      stub_request(:delete, "https://api.unsent.dev/v1/contactBooks/123")
        .to_return(status: 200, body: { success: true }.to_json)

      data, error = contact_books.delete('123')
      expect(error).to be_nil
      expect(data['success']).to be true
    end
  end
end

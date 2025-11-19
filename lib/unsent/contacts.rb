# frozen_string_literal: true

module Unsent
  class Contacts
    def initialize(client)
      @client = client
    end

    def create(book_id, payload)
      @client.post("/contactBooks/#{book_id}/contacts", payload)
    end

    def get(book_id, contact_id)
      @client.get("/contactBooks/#{book_id}/contacts/#{contact_id}")
    end

    def update(book_id, contact_id, payload)
      @client.patch("/contactBooks/#{book_id}/contacts/#{contact_id}", payload)
    end

    def upsert(book_id, contact_id, payload)
      @client.put("/contactBooks/#{book_id}/contacts/#{contact_id}", payload)
    end

    def delete(book_id, contact_id)
      @client.delete("/contactBooks/#{book_id}/contacts/#{contact_id}")
    end
  end
end

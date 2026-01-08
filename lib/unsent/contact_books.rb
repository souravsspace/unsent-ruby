# frozen_string_literal: true

module Unsent
  class ContactBooks
    def initialize(client)
      @client = client
    end

    def list
      @client.get('/contactBooks')
    end

    def create(payload)
      @client.post('/contactBooks', payload)
    end

    def get(id)
      @client.get("/contactBooks/#{id}")
    end

    def update(id, payload)
      @client.patch("/contactBooks/#{id}", payload)
    end

    def delete(id)
      @client.delete("/contactBooks/#{id}")
    end
  end
end

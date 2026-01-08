# frozen_string_literal: true

module Unsent
  class ApiKeys
    def initialize(client)
      @client = client
    end

    def list
      @client.get('/api-keys')
    end

    def create(payload)
      @client.post('/api-keys', payload)
    end

    def delete(id)
      @client.delete("/api-keys/#{id}")
    end
  end
end

# frozen_string_literal: true

module Unsent
  class Webhooks
    def initialize(client)
      @client = client
    end

    def list
      @client.get('/webhooks')
    end

    def create(payload)
      @client.post('/webhooks', payload)
    end

    def update(id, payload)
      @client.patch("/webhooks/#{id}", payload)
    end

    def delete(id)
      @client.delete("/webhooks/#{id}")
    end
  end
end

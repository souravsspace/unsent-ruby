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

    # Get a specific webhook by ID
    # @param id [String] The webhook ID
    # @return [Array] Response data and error
    def get(id)
      @client.get("/webhooks/#{id}")
    end

    # Trigger a test event for a webhook
    # @param id [String] The webhook ID
    # @return [Array] Response data and error
    def test(id)
      @client.post("/webhooks/#{id}/test", {})
    end
  end
end

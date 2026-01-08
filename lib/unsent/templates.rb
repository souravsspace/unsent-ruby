# frozen_string_literal: true

module Unsent
  class Templates
    def initialize(client)
      @client = client
    end

    def list
      @client.get('/templates')
    end

    def create(payload)
      @client.post('/templates', payload)
    end

    def get(id)
      @client.get("/templates/#{id}")
    end

    def update(id, payload)
      @client.patch("/templates/#{id}", payload)
    end

    def delete(id)
      @client.delete("/templates/#{id}")
    end
  end
end

# frozen_string_literal: true

module Unsent
  class Domains
    def initialize(client)
      @client = client
    end

    def list
      @client.get("/domains")
    end

    def create(payload)
      @client.post("/domains", payload)
    end

    def verify(domain_id)
      @client.put("/domains/#{domain_id}/verify", {})
    end

    def get(domain_id)
      @client.get("/domains/#{domain_id}")
    end

    def delete(domain_id)
      @client.delete("/domains/#{domain_id}")
    end
  end
end

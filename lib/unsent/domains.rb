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

    # Get analytics for a specific domain
    # @param domain_id [String] The domain ID
    # @param query [Hash] Query parameters
    # @option query [Integer] :days Number of days to retrieve (optional)
    # @option query [String] :startDate Start date for analytics (ISO 8601)
    # @option query [String] :endDate End date for analytics (ISO 8601)
    # @return [Array] Response data and error
    def get_analytics(domain_id, query = {})
      params = []
      params << "days=#{query[:days]}" if query[:days]
      params << "startDate=#{query[:startDate]}" if query[:startDate]
      params << "endDate=#{query[:endDate]}" if query[:endDate]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/domains/#{domain_id}/analytics#{query_string}")
    end

    # Get stats for a specific domain
    # @param domain_id [String] The domain ID
    # @param query [Hash] Query parameters
    # @option query [Integer] :days Number of days to retrieve (optional)
    # @option query [String] :startDate Start date for stats (ISO 8601)
    # @option query [String] :endDate End date for stats (ISO 8601)
    # @return [Array] Response data and error
    def get_stats(domain_id, query = {})
      params = []
      params << "days=#{query[:days]}" if query[:days]
      params << "startDate=#{query[:startDate]}" if query[:startDate]
      params << "endDate=#{query[:endDate]}" if query[:endDate]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/domains/#{domain_id}/stats#{query_string}")
    end
  end
end

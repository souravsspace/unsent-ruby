# frozen_string_literal: true

module Unsent
  class Stats
    def initialize(client)
      @client = client
    end

    # Retrieve statistics data
    # @param query [Hash] Query parameters
    # @option query [Integer] :page Page number (default: 1)
    # @option query [Integer] :limit Number of items per page (default: 50, max: 100)
    # @return [Array] Response data and error
    def get(query = {})
      params = []
      params << "page=#{query[:page]}" if query[:page]
      params << "limit=#{query[:limit]}" if query[:limit]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/stats#{query_string}")
    end
  end
end

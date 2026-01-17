# frozen_string_literal: true

module Unsent
  class Events
    def initialize(client)
      @client = client
    end

    # Retrieve all email events
    # @param query [Hash] Query parameters
    # @option query [Integer] :page Page number (default: 1)
    # @option query [Integer] :limit Number of items per page (default: 50, max: 100)
    # @option query [String] :status Filter by event status
    # @option query [String] :startDate Filter events from this date (ISO 8601)
    # @return [Array] Response data and error
    def list(query = {})
      params = []
      params << "page=#{query[:page]}" if query[:page]
      params << "limit=#{query[:limit]}" if query[:limit]
      params << "status=#{query[:status]}" if query[:status]
      params << "startDate=#{query[:startDate]}" if query[:startDate]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/events#{query_string}")
    end
  end
end

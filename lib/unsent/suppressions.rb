# frozen_string_literal: true

module Unsent
  class Suppressions
    def initialize(client)
      @client = client
    end

    def list(query = {})
      params = []
      params << "page=#{query[:page]}" if query[:page]
      params << "limit=#{query[:limit]}" if query[:limit]
      params << "search=#{query[:search]}" if query[:search]
      params << "reason=#{query[:reason]}" if query[:reason]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/suppressions#{query_string}")
    end

    def add(payload)
      @client.post('/suppressions', payload)
    end

    def delete(email)
      @client.delete("/suppressions/email/#{email}")
    end
  end
end

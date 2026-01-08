# frozen_string_literal: true

module Unsent
  class Analytics
    def initialize(client)
      @client = client
    end

    def get
      @client.get('/analytics')
    end

    def get_time_series(query = {})
      params = []
      params << "days=#{query[:days]}" if query[:days]
      params << "domain=#{query[:domain]}" if query[:domain]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/analytics/time-series#{query_string}")
    end

    def get_reputation(query = {})
      params = []
      params << "domain=#{query[:domain]}" if query[:domain]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/analytics/reputation#{query_string}")
    end
  end
end

# frozen_string_literal: true

module Unsent
  class Teams
    def initialize(client)
      @client = client
    end

    # List all teams
    # @return [Array] Response data and error
    def list
      @client.get('/teams')
    end

    # Get a specific team by ID
    # @param team_id [String] The team ID
    # @return [Array] Response data and error
    def get(team_id)
      @client.get("/teams/#{team_id}")
    end
  end
end

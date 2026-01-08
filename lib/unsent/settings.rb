# frozen_string_literal: true

module Unsent
  class Settings
    def initialize(client)
      @client = client
    end

    def get
      @client.get('/settings')
    end
  end
end

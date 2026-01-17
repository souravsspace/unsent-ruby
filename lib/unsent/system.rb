# frozen_string_literal: true

module Unsent
  class System
    def initialize(client)
      @client = client
    end

    # Check if the API is running correctly
    # @return [Array] Response data and error
    def health
      @client.get('/health')
    end

    # Retrieve API version information
    # @return [Array] Response data and error
    def version
      @client.get('/version')
    end
  end
end

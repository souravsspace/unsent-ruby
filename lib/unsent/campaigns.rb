# frozen_string_literal: true

module Unsent
  class Campaigns
    def initialize(client)
      @client = client
    end

    def create(payload)
      @client.post("/campaigns", payload)
    end

    def get(campaign_id)
      @client.get("/campaigns/#{campaign_id}")
    end

    def schedule(campaign_id, payload)
      @client.post("/campaigns/#{campaign_id}/schedule", payload)
    end

    def pause(campaign_id)
      @client.post("/campaigns/#{campaign_id}/pause", {})
    end

    def resume(campaign_id)
      @client.post("/campaigns/#{campaign_id}/resume", {})
    end
  end
end

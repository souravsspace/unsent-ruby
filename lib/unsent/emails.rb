# frozen_string_literal: true

module Unsent
  class Emails
    def initialize(client)
      @client = client
    end

    def send(payload)
      create(payload)
    end

    def create(payload)
      # Normalize from_ to from
      payload = payload.dup
      payload[:from] = payload.delete(:from_) if payload.key?(:from_) && !payload.key?(:from)
      
      # Convert scheduledAt to ISO 8601 if it's a Time object
      if payload[:scheduledAt].is_a?(Time)
        payload[:scheduledAt] = payload[:scheduledAt].iso8601
      end

      @client.post("/emails", payload)
    end

    def batch(emails)
      items = emails.map do |email|
        email = email.dup
        email[:from] = email.delete(:from_) if email.key?(:from_) && !email.key?(:from)
        email[:scheduledAt] = email[:scheduledAt].iso8601 if email[:scheduledAt].is_a?(Time)
        email
      end

      @client.post("/emails/batch", items)
    end

    def get(email_id)
      @client.get("/emails/#{email_id}")
    end

    def update(email_id, payload)
      payload = payload.dup
      payload[:scheduledAt] = payload[:scheduledAt].iso8601 if payload[:scheduledAt].is_a?(Time)
      @client.patch("/emails/#{email_id}", payload)
    end

    def cancel(email_id)
      @client.post("/emails/#{email_id}/cancel", {})
    end
  end
end

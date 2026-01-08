# frozen_string_literal: true

module Unsent
  class Emails
    def initialize(client)
      @client = client
    end

    def send(payload, options = {})
      create(payload, options)
    end

    def create(payload, options = {})
      # Normalize from_ to from
      payload = payload.dup
      payload[:from] = payload.delete(:from_) if payload.key?(:from_) && !payload.key?(:from)
      
      # Convert scheduledAt to ISO 8601 if it's a Time object
      if payload[:scheduledAt].is_a?(Time)
        payload[:scheduledAt] = payload[:scheduledAt].iso8601
      end

      headers = {}
      headers["Idempotency-Key"] = options[:idempotency_key] if options[:idempotency_key]

      @client.post("/emails", payload, headers)
    end

    def batch(emails, options = {})
      items = emails.map do |email|
        email = email.dup
        email[:from] = email.delete(:from_) if email.key?(:from_) && !email.key?(:from)
        email[:scheduledAt] = email[:scheduledAt].iso8601 if email[:scheduledAt].is_a?(Time)
        email
      end

      headers = {}
      headers["Idempotency-Key"] = options[:idempotency_key] if options[:idempotency_key]

      @client.post("/emails/batch", items, headers)
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

    def list(query = {})
      params = []
      params << "page=#{query[:page]}" if query[:page]
      params << "limit=#{query[:limit]}" if query[:limit]
      params << "startDate=#{query[:startDate]}" if query[:startDate]
      params << "endDate=#{query[:endDate]}" if query[:endDate]
      
      # Handle domainId as both string and array
      if query[:domainId]
        if query[:domainId].is_a?(Array)
          query[:domainId].each { |id| params << "domainId=#{id}" }
        else
          params << "domainId=#{query[:domainId]}"
        end
      end
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/emails#{query_string}")
    end

    def get_complaints(query = {})
      params = []
      params << "page=#{query[:page]}" if query[:page]
      params << "limit=#{query[:limit]}" if query[:limit]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/emails/complaints#{query_string}")
    end

    def get_bounces(query = {})
      params = []
      params << "page=#{query[:page]}" if query[:page]
      params << "limit=#{query[:limit]}" if query[:limit]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/emails/bounces#{query_string}")
    end

    def get_unsubscribes(query = {})
      params = []
      params << "page=#{query[:page]}" if query[:page]
      params << "limit=#{query[:limit]}" if query[:limit]
      
      query_string = params.empty? ? '' : "?#{params.join('&')}"
      @client.get("/emails/unsubscribes#{query_string}")
    end
  end
end

# frozen_string_literal: true

require "net/http"
require "json"
require "uri"

module Unsent
  class Client
    DEFAULT_BASE_URL = "https://api.unsent.dev"

    attr_reader :key, :url, :raise_on_error
    attr_accessor :emails, :contacts, :campaigns, :domains, :analytics, :api_keys, :contact_books, :settings, :suppressions, :templates, :webhooks

    def initialize(key = nil, url: nil, raise_on_error: true)
      @key = key || ENV["UNSENT_API_KEY"] || ENV["UNSENT_API_KEY"]
      raise ArgumentError, "Missing API key. Pass it to Unsent::Client.new or set UNSENT_API_KEY environment variable" if @key.nil? || @key.empty?

      base_url = url || ENV["UNSENT_BASE_URL"] || ENV["UNSENT_BASE_URL"] || DEFAULT_BASE_URL
      @url = "#{base_url}/v1"
      @raise_on_error = raise_on_error

      # Initialize resource clients
      @emails = Emails.new(self)
      @contacts = Contacts.new(self)
      @campaigns = Campaigns.new(self)
      @domains = Domains.new(self)
      @analytics = Analytics.new(self)
      @api_keys = ApiKeys.new(self)
      @contact_books = ContactBooks.new(self)
      @settings = Settings.new(self)
      @suppressions = Suppressions.new(self)
      @templates = Templates.new(self)
      @webhooks = Webhooks.new(self)
    end

    def request(method, path, body = nil, headers = {})
      uri = URI("#{@url}#{path}")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = uri.scheme == "https"

      request = case method.upcase
                when "GET" then Net::HTTP::Get.new(uri)
                when "POST" then Net::HTTP::Post.new(uri)
                when "PUT" then Net::HTTP::Put.new(uri)
                when "PATCH" then Net::HTTP::Patch.new(uri)
                when "DELETE" then Net::HTTP::Delete.new(uri)
                else raise ArgumentError, "Unsupported HTTP method: #{method}"
                end

      request["Authorization"] = "Bearer #{@key}"
      request["Content-Type"] = "application/json"
      
      headers.each do |key, value|
        request[key] = value
      end

      request.body = body.to_json if body

      response = http.request(request)
      default_error = { "code" => "INTERNAL_SERVER_ERROR", "message" => response.message }

      unless response.is_a?(Net::HTTPSuccess)
        begin
          payload = JSON.parse(response.body)
          error = payload["error"] || default_error
        rescue JSON::ParserError
          error = default_error
        end

        raise HTTPError.new(response.code.to_i, error, method.upcase, path) if @raise_on_error
        return [nil, error]
      end

      begin
        data = JSON.parse(response.body)
        [data, nil]
      rescue JSON::ParserError
        [nil, default_error]
      end
    end

    def post(path, body, headers = {})
      request("POST", path, body, headers)
    end

    def get(path, headers = {})
      request("GET", path, nil, headers)
    end

    def put(path, body, headers = {})
      request("PUT", path, body, headers)
    end

    def patch(path, body, headers = {})
      request("PATCH", path, body, headers)
    end

    def delete(path, body = nil, headers = {})
      request("DELETE", path, body, headers)
    end
  end
end

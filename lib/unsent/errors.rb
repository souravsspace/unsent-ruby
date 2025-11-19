# frozen_string_literal: true

module Unsent
  class HTTPError < Error
    attr_reader :status_code, :error, :method, :path

    def initialize(status_code, error, method, path)
      @status_code = status_code
      @error = error
      @method = method
      @path = path
      super(to_s)
    end

    def to_s
      code = @error["code"] || "UNKNOWN_ERROR"
      message = @error["message"] || ""
      "#{@method} #{@path} -> #{@status_code} #{code}: #{message}"
    end
  end
end

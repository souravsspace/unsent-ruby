# frozen_string_literal: true

require_relative "unsent/version"
require_relative "unsent/client"
require_relative "unsent/emails"
require_relative "unsent/contacts"
require_relative "unsent/campaigns"
require_relative "unsent/domains"
require_relative "unsent/types"
require_relative "unsent/errors"

module Unsent
  class Error < StandardError; end
end

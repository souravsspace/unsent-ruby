# frozen_string_literal: true

require_relative "unsent/version"
require_relative "unsent/client"
require_relative "unsent/emails"
require_relative "unsent/contacts"
require_relative "unsent/campaigns"
require_relative "unsent/domains"
require_relative "unsent/analytics"
require_relative "unsent/api_keys"
require_relative "unsent/contact_books"
require_relative "unsent/settings"
require_relative "unsent/suppressions"
require_relative "unsent/templates"
require_relative "unsent/webhooks"
require_relative "unsent/types"
require_relative "unsent/errors"

module Unsent
  class Error < StandardError; end
end

# frozen_string_literal: true

module Unsent
  # Type definitions for documentation purposes
  # Ruby is dynamically typed, so these are just for reference
  module Types
    # Email types
    EmailCreate = Hash # { to:, from:, subject:, html:, text:, attachments:, scheduledAt: }
    EmailCreateResponse = Hash # { id:, to:, from:, subject:, status:, createdAt: }
    Email = Hash
    EmailUpdate = Hash
    EmailUpdateResponse = Hash
    EmailCancelResponse = Hash
    EmailBatchItem = Hash
    EmailBatchResponse = Hash

    # Contact types
    Contact = Hash
    ContactCreate = Hash
    ContactCreateResponse = Hash
    ContactUpdate = Hash
    ContactUpdateResponse = Hash
    ContactUpsert = Hash
    ContactUpsertResponse = Hash
    ContactDeleteResponse = Hash

    # Campaign types
    Campaign = Hash
    CampaignCreate = Hash
    CampaignCreateResponse = Hash
    CampaignSchedule = Hash
    CampaignScheduleResponse = Hash
    CampaignActionResponse = Hash

    # Domain types
    Domain = Hash
    DomainCreate = Hash
    DomainCreateResponse = Hash
    DomainVerifyResponse = Hash
    DomainDeleteResponse = Hash

    # Error type
    APIError = Hash # { code:, message: }
  end
end

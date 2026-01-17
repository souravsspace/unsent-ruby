# frozen_string_literal: true

require 'spec_helper'
require 'unsent'
require 'webmock/rspec'

RSpec.describe Unsent::Teams do
  let(:client) { Unsent::Client.new('test_key', raise_on_error: false) }
  let(:teams) { client.teams }

  describe '#list' do
    it 'lists all teams' do
      stub_request(:get, "https://api.unsent.dev/v1/teams")
        .to_return(
          status: 200,
          body: {
            data: [
              { id: 'team_1', name: 'Team Alpha', plan: 'pro' },
              { id: 'team_2', name: 'Team Beta', plan: 'enterprise' }
            ],
            count: 2
          }.to_json
        )

      data, error = teams.list
      expect(error).to be_nil
      expect(data).to have_key('data')
      expect(data['data']).to be_an(Array)
      expect(data['data'].length).to eq(2)
      expect(data['count']).to eq(2)
    end

    it 'handles empty team list' do
      stub_request(:get, "https://api.unsent.dev/v1/teams")
        .to_return(
          status: 200,
          body: { data: [], count: 0 }.to_json
        )

      data, error = teams.list
      expect(error).to be_nil
      expect(data['data']).to be_empty
    end
  end

  describe '#get' do
    it 'retrieves a specific team by ID' do
      stub_request(:get, "https://api.unsent.dev/v1/teams/team_123")
        .to_return(
          status: 200,
          body: {
            id: 'team_123',
            name: 'Team Alpha',
            plan: 'pro',
            dailyEmailLimit: 10000,
            monthlyEmailLimit: 300000
          }.to_json
        )

      data, error = teams.get('team_123')
      expect(error).to be_nil
      expect(data).to have_key('id')
      expect(data['id']).to eq('team_123')
      expect(data).to have_key('name')
      expect(data).to have_key('plan')
    end

    it 'handles team not found' do
      stub_request(:get, "https://api.unsent.dev/v1/teams/team_invalid")
        .to_return(
          status: 404,
          body: { error: { code: 'NOT_FOUND', message: 'Team not found' } }.to_json
        )

      data, error = teams.get('team_invalid')
      expect(data).to be_nil
      expect(error).to have_key('code')
      expect(error['code']).to eq('NOT_FOUND')
    end
  end
end

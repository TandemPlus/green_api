# frozen_string_literal: true

require 'green_api/connection'
require 'green_api/instance/account'

module GreenApi
  class Instance
    include HTTParty
    include GreenApi::Connection
    include GreenApi::Instance::Account

    base_uri 'https://api.green-api.com/partner'
    format :json

    def initialize(token: nil)
      @token = token || ENV['GREEN_PARTNER_TOKEN']
    end
  end
end

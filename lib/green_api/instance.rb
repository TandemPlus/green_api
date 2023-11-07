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

    private

    # TODO: refactor this
    # У партнерского API должен быть параметр data
    def request(method, path, options, files = nil)
      headers = { 'Content-Type': 'application/json' }
      response = self.class.send(method,
                                 path,
                                 {
                                   headers: headers,
                                   data: options
                                 })
      data = response.parsed_response
      return unless data

      data
    end
  end
end

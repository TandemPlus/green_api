# frozen_string_literal: true

require 'green_api/client/connection'
require 'green_api/client/account'
require 'green_api/client/send'
require 'green_api/client/receive'


module GreenApi
  class Client
    include HTTParty
    include GreenApi::Client::Connection
    include GreenApi::Client::Account
    include GreenApi::Client::Send
    include GreenApi::Client::Receive
    debug_output $stdout

    base_uri 'https://api.green-api.com/waInstance'
    format :json

    def initialize(api_token_instance: nil, id_instance: nil)
      @token = api_token_instance || ENV['GREEN_API_TOKEN']
      @instance = id_instance || ENV['GREEN_API_INSTANCE']
    end
  end
end

# frozen_string_literal: true

require 'green_api/client/connection'
require 'green_api/client/account'
require 'green_api/client/send'
require 'green_api/client/receive'
require 'green_api/client/history'
require 'green_api/client/group'
require 'green_api/client/service'
require 'green_api/client/queue'
require 'green_api/client/read'


module GreenApi
  class Client
    include HTTParty
    include GreenApi::Client::Connection
    include GreenApi::Client::Account
    include GreenApi::Client::Send
    include GreenApi::Client::Receive
    include GreenApi::Client::History
    include GreenApi::Client::Group
    include GreenApi::Client::Service
    include GreenApi::Client::Queue
    include GreenApi::Client::Read

    base_uri 'https://api.green-api.com/waInstance'
    format :json

    def initialize(token: nil, instance: nil)
      @token = token || ENV['GREEN_API_TOKEN']
      @instance = instance || ENV['GREEN_API_INSTANCE']
    end
  end
end

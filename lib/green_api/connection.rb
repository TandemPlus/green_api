# frozen_string_literal: true
module GreenApi
  module Connection
    def get(path, options = {})
      request(:get, path, options)
    end

    def post(path, options = {})
      request(:post, path, options)
    end

    def put(path, options = {})
      request(:put, path, options)
    end

    def delete(path, options = {})
      request(:delete, path, options)
    end

    private

    def request(http_method, path, options, files = nil)

      options.merge!(files) if files
      headers = { 'Content-Type': files ? 'multipart/form-data' : 'application/json' }
      response = self.class.send(http_method,
                                 path,
                                 {
                                   headers: headers,
                                   body: options
                                 })
      data = response.parsed_response
      return unless data

      data
    end

    # TODO: refactor this
    # added newlines (needed for api)
    def tab_controls(options)
      options = options.map { |k, v| "\r\n\t\"#{k}\": \"#{v}\"" }.join(',')
      "{#{options}}"
    end

    def default_options(options = {})
      {
        "webhookUrl": '',
        "webhookUrlToken": '',
        "delaySendMessagesMilliseconds": 1000,
        "markIncomingMessagesReaded": 'yes',
        "markIncomingMessagesReadedOnReply": 'yes',
        "outgoingAPIMessageWebhook": 'yes',
        "outgoingWebhook": 'yes',
        "outgoingMessageWebhook": 'yes',
        "incomingWebhook": 'yes',
        "deviceWebhook": 'no',
        "stateWebhook": 'no',
        "keepOnlineStatus": 'no',
        "pollMessageWebhook": 'no',
        "incomingBlockWebhook": 'yes'
      }.merge(options)
    end
  end
end

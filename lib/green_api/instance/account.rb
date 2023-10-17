# frozen_string_literal: true

module GreenApi
  class Instance
    module Account
      def create_instance_account(options = {})
        post("/createInstance/#{@token}", default_options(options))
      end

      def delete_instance_account(options = {})
        post("/deleteInstanceAccount/#{@token}", options)
      end

      def get_instances(options = {})
        get("/getInstances/#{@token}", options)
      end

      def default_options(options = {})
        {
          "webhookUrl": nil,
          "webhookUrlToken": nil,
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
end

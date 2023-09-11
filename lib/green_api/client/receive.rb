# frozen_string_literal: true

module GreenApi
  class Client
    # Receive a notification from a whatsapp
    module Receive
      def receive_notification
        get("#{@instance}/receiveNotification/#{@token}")
      end

      def delete_notification(id: nil)
        delete("#{@instance}/deleteNotification/#{@token}/#{id}")
      end
    end
  end
end

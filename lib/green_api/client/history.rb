# frozen_string_literal: true

module GreenApi
  class Client
    module History
      def get_chat_history(options)
        get("#{@instance}/getChatHistory/#{@token}", tab_controls(options))
      end

      def get_message(options)
        post("#{@instance}/getMessage/#{@token}", tab_controls(options))
      end

      def last_incoming_messages(options = {})
        get("#{@instance}/lastIncomingMessages/#{@token}", options)
      end

      def last_outgoing_messages(options = {})
        get("#{@instance}/lastOutgoingMessages/#{@token}", options)
      end
    end
  end
end

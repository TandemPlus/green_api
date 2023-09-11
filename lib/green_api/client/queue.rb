# frozen_string_literal: true

module GreenApi
  class Client
    module Queue
      def show_messages_queue(options = {})
        get("#{@instance}/showMessagesQueue/#{@token}", options)
      end

      def clear_messages_queue(options = {})
        get("#{@instance}/clearMessagesQueue/#{@token}", options)
      end
    end
  end
end

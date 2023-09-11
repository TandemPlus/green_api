# frozen_string_literal: true

module GreenApi
  class Client
    module Read
      def read_chat(options)
        post("#{@instance}/readChat/#{@token}", tab_controls(options))
      end
    end
  end
end

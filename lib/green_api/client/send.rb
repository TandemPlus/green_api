# frozen_string_literal: true

module GreenApi
  class Client
    # Send a message to
    module Send
      def send_message(options)
        post("#{@instance}/sendMessage/#{@token}", tab_controls(options))
      end

      def send_file_by_url(options)
        post("#{@instance}/SendFileByUrl/#{@token}", tab_controls(options))
      end

      def upload_file(options)
        post("#{@instance}/uploadFile/#{@token}", options)
      end

      def send_location(options)
        post("#{@instance}/sendLocation/#{@token}", tab_controls(options))
      end

      def send_contact(options)
        post("#{@instance}/sendContact/#{@token}", tab_controls(options))
      end

      def send_link(options)
        post("#{@instance}/sendLink/#{@token}", tab_controls(options))
      end
    end
  end
end

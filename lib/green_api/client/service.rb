module GreenApi
  class Client
    module Service
      def check_whatsapp(options)
        post("#{@instance}/checkWhatsapp/#{@token}", tab_controls(options))
      end

      def get_avatar(options)
        post("#{@instance}/getAvatar/#{@token}", tab_controls(options))
      end

      def get_contacts(options = {})
        get("#{@instance}/getContacts/#{@token}", options)
      end

      def get_contact_info(options)
        get("#{@instance}/getContactInfo/#{@token}", options)
      end

      def delete_message(options)
        post("#{@instance}/deleteMessage/#{@token}", tab_controls(options))
      end

      def archive_chat(options)
        post("#{@instance}/archiveChat/#{@token}", tab_controls(options))
      end

      def unarchive_chat(options)
        post("#{@instance}/unarchiveChat/#{@token}", tab_controls(options))
      end

      def set_disappearing_chat(options)
        post("#{@instance}/setDisappearingChat/#{@token}", tab_controls(options))
      end
    end
  end
end

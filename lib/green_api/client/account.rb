# frozen_string_literal: true

module GreenApi
  class Client
    module Account
      def get_settings(options = {})
        get("#{@instance}/getSettings/#{@token}", options)
      end

      def set_settings(options = {})
        post("#{@instance}/setSettings/#{@token}", options)
      end

      def get_state_instance(options = {})
        get("#{@instance}/getStateInstance/#{@token}", options)
      end

      def reboot(options = {})
        get("#{@instance}/reboot/#{@token}", options)
      end

      def logout(options = {})
        get("#{@instance}/logout/#{@token}", options)
      end

      def qr(options = {})
        get("#{@instance}/qr/#{@token}", options)
      end

      def set_profile_picture(options = {})
        post("#{@instance}/setProfilePicture/#{@token}", options)
      end

      def get_wa_settings(options = {})
        get("#{@instance}/getWaSettings/#{@token}", options)
      end
    end
  end
end

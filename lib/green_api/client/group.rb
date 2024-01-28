# frozen_string_literal: true

module GreenApi
  class Client
    module Group
      def create_group(options)
        post("#{@instance}/createGroup/#{@token}", tab_controls(options))
      end

      def update_group_name(options)
        post("#{@instance}/updateGroupName/#{@token}", tab_controls(options))
      end

      def get_group_data(options)
        post("#{@instance}/getGroupData/#{@token}", tab_controls(options))
      end

      def add_group_participant(options)
        post("#{@instance}/addGroupParticipant/#{@token}", tab_controls(options))
      end

      def remove_group_participant(options)
        post("#{@instance}/removeGroupParticipant/#{@token}", tab_controls(options))
      end

      def set_group_admin(options)
        post("#{@instance}/setGroupAdmin/#{@token}", tab_controls(options))
      end

      def remove_admin(options)
        post("#{@instance}/removeAdmin/#{@token}", tab_controls(options))
      end

      def set_group_picture(options)
        # post("#{@instance}/setGroupPicture/#{@token}", tab_controls(options))
      end

      def leave_group(options)
        post("#{@instance}/leaveGroup/#{@token}", tab_controls(options))
      end
    end
  end
end

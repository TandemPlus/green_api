# frozen_string_literal: true

module GreenApi
  class Instance
    module Account
      def create_instance_account(options = {})
        post("/createInstance/#{@token}", default_options(options).to_json)
      end

      def delete_instance_account(options = {})
        post("/deleteInstanceAccount/#{@token}", options.to_json)
      end

      def get_instances(options = {})
        get("/getInstances/#{@token}", options)
      end
    end
  end
end

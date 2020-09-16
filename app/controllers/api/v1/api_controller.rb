 module Api::V1
    class ApiController < ApplicationController
        # verifies if token belongs to user, but it will not prohibit user to make the call
        acts_as_token_authentication_handler_for User
        # it will prohibit an unauthenticated user to access the API
        before_action :require_authentication!

        private 
            def require_authentication!
                throw(:warden, scope: :user) unless current_user.presence
            end
    end
end
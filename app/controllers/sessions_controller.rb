class SessionsController < Devise::SessionsController
	
    private
    
      def after_sign_in_path_for resource
        profile_path(current_user)
      end
end
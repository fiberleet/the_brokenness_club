class SessionsController < Devise::SessionsController
	
    private
    
      def after_sign_in_path_for resource
        if current_user.has_any_role? :student, :mentor
            path = profile_path(current_user)
        else
            path = role_path(current_user)
        end
        return path
      end
end
class RoleController < ApplicationController
	before_action :require_login
	def show

	end

	def update
		unless params[:role] == "student" || "mentor"
			flash.now[:danger] = "You don't have permission to do that."
			redirect_to root_path
		end
		
		if current_user.has_role? params[:role]
			current_user.remove_role params[:role]
		else
			current_user.add_role params[:role]
		end
		redirect_to edit_profile_path
	end

	private

		def require_login
			unless user_signed_in?
				session[:forward_url] = request.fullpath
				redirect_to new_user_session_path, :notice => "Please sign in."
			end
		end
end


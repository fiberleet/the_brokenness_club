class RoleController < ApplicationController
	before_action :require_login
	def show

	end

	def update
		current_user.add_role params[:role]
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


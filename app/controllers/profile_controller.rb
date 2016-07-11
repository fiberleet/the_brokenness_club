class ProfileController < ApplicationController
	before_action :require_login
	def edit
		@profile = current_user.profile
		@address = @profile.address
		unless current_user.has_any_role? :student, :mentor
			flash.now[:notice] = "Please select a role"
			render "role/show"
		end

	end

	def update
		@profile = current_user.profile
		@profile.update(profile_params)
		redirect_to profile_path(current_user)
	end

	def create
		debugger
		@profile = current_user.build_profile(profile_params)
	end

	def new

	end

	def show
		@profile = current_user.profile
		unless @profile.configured
			flash[:notice] = "Please configure your profile to get started"
			redirect_to edit_profile_path(current_user)
		end
	end

	private
	
		def require_login
			unless user_signed_in?
				session[:forward_url] = request.fullpath
				redirect_to new_user_session_path, :notice => "Please sign in."
			end
		end

		def profile_params
			params.require(:profile).permit(:configured, :birthday, :story, :max_clients, :gender, address_attributes: 
				[:id, :street_address, :apt_suite_building, :city, :state, :zip])
		end
end

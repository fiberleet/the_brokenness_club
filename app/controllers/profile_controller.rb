class ProfileController < ApplicationController
	before_action :require_login
	def edit
		@profile = current_user.profile
		@address = @profile.address
		@countries_collection = CountryStateSelect.countries_collection
		@countries_collection.delete_if { |x| x[0] == "United States"}
		@countries_collection.unshift(["United States", :US])
	end

	def update
		@profile = current_user.profile
		@profile.current_user = current_user

		if @profile.update(profile_params)
			@profile.configured = true
			@profile.save
			redirect_to profile_path(current_user)
		else
			render 'edit'
		end
	end

	def create
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
			params.require(:profile).permit(:configured, :birthday, :story, :max_clients, :profile_country, :profile_state, :age, :gender, address_attributes: 
				[:id, :street_address, :apt_suite_building, :city, :state, :zip], subcategory_ids: [])
		end
end

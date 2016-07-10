class RegistrationsController < Devise::RegistrationsController
	include StaticPagesHelper
	before_filter :configure_permitted_parameters

	def create
		super
		if session[:forward_url] == get_help_path
			resource.add_role :student
		elsif session[:forward_url] == give_help_path
			resource.add_role :mentor
		end
		session.delete(:forward_url)
	end

	def new
		super

	end


  protected

	  def configure_permitted_parameters
	  	devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
	  	devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
	  end



	  def after_inactive_sign_up_path_for user
	  	session[:forward_url] || super
	  end


 end
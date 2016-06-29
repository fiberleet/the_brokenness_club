class RegistrationsController < Devise::RegistrationsController
	include StaticPagesHelper

  protected

	  def after_inactive_sign_up_path_for(resource)
	    redirect_back_or root_path
	  end
 end
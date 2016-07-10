class StaticPagesController < ApplicationController
	include StaticPagesHelper
	before_action :check_page, only: [:get_help, :give_help]

  def about
  end

  def get_help
  end

  def give_help
  end

  private
	  def check_page
	  	session[:forward_url] = request.fullpath
	  end


end

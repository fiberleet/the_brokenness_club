class StaticPagesController < ApplicationController
	include StaticPagesHelper

  def about
  end

  def get_help
  	store_location
  end

  def give_help
  	store_location
  end

  private


end

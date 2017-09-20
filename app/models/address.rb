class Address < ApplicationRecord 
	belongs_to :addressable, :polymorphic => true
	validates_presence_of :street_address, :city, :state, :zip, allow_blank: true
end

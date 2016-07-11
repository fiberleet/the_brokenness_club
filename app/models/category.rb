class Category < ActiveRecord::Base
	has_many :Profiles
	has_many :Subcategories

	validates_presence_of :name
end

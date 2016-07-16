class Categorization < ActiveRecord::Base
	belongs_to :profile
	belongs_to :subcategory
end

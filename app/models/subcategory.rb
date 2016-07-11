class Subcategory < ActiveRecord::Base
  has_many :Profiles
  belongs_to :Category

  validates_presence_of :name, :category_id

end

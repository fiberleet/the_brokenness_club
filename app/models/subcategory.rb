class Subcategory < ApplicationRecord
  has_many :categorizations
  has_many :profiles, through: :categorizations
  belongs_to :category

  validates_presence_of :name, :category_id

end

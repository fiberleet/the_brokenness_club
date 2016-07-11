class Profile < ActiveRecord::Base
  belongs_to :User
  belongs_to :Category
  belongs_to :Subcategory
  before_create :build_address
  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address

  validates_presence_of :address

end

class Profile < ActiveRecord::Base
  belongs_to :User
  before_create :build_address
  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address

  validates_presence_of :address

end

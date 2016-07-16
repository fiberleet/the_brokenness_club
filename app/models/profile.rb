class Profile < ActiveRecord::Base
  belongs_to :User
  has_many :categorizations
  has_many :subcategories, through: :categorizations
  before_create :build_address
  has_one :address, :as => :addressable, dependent: :destroy
  accepts_nested_attributes_for :address, :subcategories

  validates_presence_of :address

end

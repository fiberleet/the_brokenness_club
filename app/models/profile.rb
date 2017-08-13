class Profile < ApplicationRecord
  belongs_to :User
  mount_uploader :avatar, AvatarUploader
  has_many :categorizations
  has_many :subcategories, through: :categorizations
  before_create :build_address
  has_one :address, :as => :addressable, dependent: :destroy
  accepts_nested_attributes_for :address, :subcategories
  attr_accessor :current_user

  validates_presence_of :profile_country, :profile_state, :story, :age, :presence => true

  validates_presence_of :subcategories, :max_clients, :presence => true, :if => :validate_mentor?


  def validate_mentor?
  	self.current_user.has_role? :mentor
  end

  def validate_student?
  	self.current_user.has_role? :student
  end
end

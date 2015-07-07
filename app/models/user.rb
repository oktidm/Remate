class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :bids

  enum role: [:guest, :seller, :admin]

  before_save :default_role
  def default_role
  	self.role ||= 0
  end

end

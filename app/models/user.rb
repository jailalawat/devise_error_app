class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :campaigns
  has_many :sms_sends
  validates_length_of :first_name, :minimum => 3
  validates_length_of :last_name, :minimum => 3
  

  def full_name
  	"#{self.first_name} #{self.last_name}"
  end

end

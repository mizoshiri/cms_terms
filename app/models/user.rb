class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  attr_accessible :email, :password, :password_confirmation, :notice_flag

  validates :email, :email_format => {:message => 'is not looking good'}, presence: true
  validates :password, presence: true

  has_many :notes
end

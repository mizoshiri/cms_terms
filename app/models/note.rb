class Note < ActiveRecord::Base

  attr_accessible :user_id, :title, :content

  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'

  validates :title, presence: true
end

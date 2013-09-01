class Note < ActiveRecord::Base

  attr_accessible :user_id, :title, :content
end

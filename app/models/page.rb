class Page < ActiveRecord::Base

  attr_accessible :type_id, :title, :content, :status
end

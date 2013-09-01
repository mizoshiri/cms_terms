class HomesController < ApplicationController
  def index
  	if !current_user.nil? then
  		@pages = UserPageCheck.where(:user_id => current_user.id).includes(:page)
  	end
  end
end

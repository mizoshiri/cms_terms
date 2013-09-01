class ApplicationController < ActionController::Base
	before_filter :check_update_page, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

	def after_sign_in_path_for(resource)
		update_user(resource)
		root_path
	end

	private
		# check pages notice when user login
		def check_update_page
			if ( params["controller"] == "devise/sessions" && params["action"] == "create") then

				@user = User.where(:email => params["user"]["email"]).first
				if !@user.last_sign_in_at.nil? then 
					@pages = Page.where(:status => true).
												where("updated_at > ?", @user.last_sign_in_at).
												order('updated_at ASC')
					@pages.each do |v|
	          user_page_check = UserPageCheck.new()
	          user_page_check[:user_id] = @user.id
	          user_page_check[:page_id] = v.id
	          user_page_check.save
					end
				end
			end
		end

		#update flag if user has UserPageCheck
		def update_user(v)
			if !UserPageCheck.where(:user_id => v.id).first.nil? then
				user = User.find_by_id(v.id)
				user.update_attribute(:notice_flag , true)
			end
		end
end

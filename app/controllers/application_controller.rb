class ApplicationController < ActionController::Base
	before_filter :check_update_page, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

	# def after_sign_in_path_for(resource)
	# 	check_update_page(resource)
	# 	root_path
	# end

	private
		# check pages
		def check_update_page
			if ( params["controller"] == "devise/sessions" && params["action"] == "create") then
				pages = Page.where(:status => true).
											#where("updated_at > ?", v.last_sign_in_at).
											order('updated_at ASC')
											#debugger
				pages.each do |v|
					#UserPageCheck.new
				end
			end
		end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	current_user ? dashboard_index_url : admin_dashboard_index_url
  end
end

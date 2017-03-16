class Admin::LoginController < ApplicationController
  def index
  	redirect_to new_admin_session_url
  end
end

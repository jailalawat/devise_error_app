class TrackingInfoController < ApplicationController

  def index  	
  	
  end

  def login
  	redirect_to new_user_session_url
  end

end

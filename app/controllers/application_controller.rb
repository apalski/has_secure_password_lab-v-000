class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
  	redirect_to controller: 'sessions', action: 'new' unless session[:user_id]
  	@user = User.find(session[:user_id])
  end
end

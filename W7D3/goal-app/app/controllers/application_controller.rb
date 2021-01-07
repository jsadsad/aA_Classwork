class ApplicationController < ActionController::Base
  helper_method :require_no_current_user!

  def login!(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def require_no_current_user!
    redirect_to root_url if current_user
  end
end

class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

    def login(user)
        session[:session_token] = user.reset_session_token!
    end

    def current_user
      @current_user ||= User.find_by(session_token: session[:session_token])
    end


    def logged_in?
      !!current_user #the method, not the instance variable
      #the ! changes the ruby object into a boolean value
      #!! will change it back into its truthy/falsey value
    end

    def require_logged_in
      redirect_to new_session_url unless logged_in?
    end
end

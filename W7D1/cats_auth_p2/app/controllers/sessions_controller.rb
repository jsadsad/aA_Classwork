class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:user_name],
      params[:user][:password]
    )

    if @user
      login(@user) # write this method
      # @user.reset_session_token!
      redirect_to cats_url
    else
      render :new
    end
  end

  def destroy
    # user = User.find_by(id: params[:id])
    # user.destroy
    # render json: user
    current_user.reset_session_token! if current_user
    session[:session_token] = nil #clearing the cookie
    @current_user = nil #extra precaution
    redirect_to cats_url
    #  Invalidating the old token guarantees that no one can login with it. This is good practice in case someone has stolen the token.
  end

end

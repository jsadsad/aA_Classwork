class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(user_params)
    if @user.save!
      login!(@user)
      redirect_to '/'
      # bands index
    end
  end
end

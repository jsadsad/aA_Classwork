class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  # find vs find_by
  # find_by is used as a helper when you're searching for information within a column, and it maps to such with naming conventions. For instance, if you have a column named name in your database
  # The find method is usually used to retrieve a row by ID.

  # def show
  #   user = User.find_by(id: params[:id])
  #   render json: user
  # end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end

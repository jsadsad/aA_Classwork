class UsersController < ApplicationController
  def index
    render plain: "I'm in the Index action!"
  end

  def create
    render json: params
  end
end

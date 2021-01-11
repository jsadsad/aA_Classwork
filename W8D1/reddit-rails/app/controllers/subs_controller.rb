class SubsController < ApplicationController
  before_action :require_logged_in, only: [:create, :edit, :update]

  def index
    @subs = Sub.all
    render :index
  end

  def new
    @sub = Sub.new
    render :new
  end

  def create
    @sub = current_user.subs.create(sub_params)
    # @sub.user_id = params[:user_id]
    flash[:errors] = @sub.errors.full_messages unless @sub.save
    redirect_to sub_url(@sub)
  end

  def edit
    @sub = Sub.find_by(id: params[:id])
    render :edit
  end

  def update
    @sub = Sub.find_by(id: params[:id])
    if @sub && @sub.update(sub_params)
      redirect_to sub_url(@sub)
    else
      flash[:errors] = @sub.errors.full_messages
      render :edit
    end
  end

  def show
    @sub = Sub.find_by(id: params[:id])
    render :show
  end

  private
  def sub_params
    params.require(:sub).permit(:title, :description, :user_id)
  end
end

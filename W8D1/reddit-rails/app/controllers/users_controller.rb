class UsersController < ApplicationController

    before_action :require_logged_in, except: [:create, :new]

    def index
        @users = User.all
        render :index
    end

    def new
        @user = User.new
        render :new
    end

    def show
        @user = User.find_by(id: params[:id])
        render :show
    end

    def create
        @user = User.create(user_params)

        if @user.save
            login(@user)
            redirect_to users_url
        else
            flash[:errors] = @user.errors.full_messages
            render :new
        end
    end

    def edit
        @user = User.find_by(id: params[:id])
        render :edit
    end

    def update
        @user = User.find_by(id: params[:id])
        if @user && @user.update(user_params)
            redirect_to user_url(@user)
        else
            flash[:errors] = @user.errors.full_messages
            render :edit
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end

class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def new 
        @user = User.new
    end
    
    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to '/'
      else
        redirect_to '/signup'
      end
    end

    def show
      @user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to @user
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
    end

    private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end

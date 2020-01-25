class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def new 
        @user = User.new
    end
    
    def create
      @user = User.new(user_params)
      if @user.save && @user.valid?
        session[:user_id] = @user.id
        redirect_to @user
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to '/signup'
      end
    end

    def show
      @user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
      if current_user != @user
        redirect_to sports_path
      end
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to @user
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      session[:user_id] = nil
        reset_session
      redirect_to sports_path
    end

    private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :age)
    end
end

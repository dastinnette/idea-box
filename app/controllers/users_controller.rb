class UsersController < ApplicationController

  def index
    redirect_to new_user_path
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to "/profile"
  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end

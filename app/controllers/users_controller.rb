class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to "/profile"
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end

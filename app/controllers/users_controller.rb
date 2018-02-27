class UsersController < ApplicationController


  def new

  end

  def create
    user = User.new(user_params)
    if user.valid? && user.password == user.password_confirmation
      user.save
      session[:user_id] = user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end


end

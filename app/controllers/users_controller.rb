class UsersController < ApplicationController


  def new

  end

  def create
    user = User.create(params)
  end


end

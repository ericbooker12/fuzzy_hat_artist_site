class UsersController < ApplicationController
  def show
    p params
    @user = User.find(params[:id])
  end


end

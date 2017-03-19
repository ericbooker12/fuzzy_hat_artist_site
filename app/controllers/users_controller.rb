class UsersController < ApplicationController
  def show
  	@user = current_user
  	@gallery = @user.galleries.active.first
  end
end

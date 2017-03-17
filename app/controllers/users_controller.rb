class UsersController < ApplicationController
  def show
  	@gallery = Gallery.active.first
  end
end

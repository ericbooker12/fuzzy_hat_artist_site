class UsersController < ApplicationController
  def show
  	@galleries = Gallery.active
  end
end

class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  	@galleries = Gallery.active
  end
end

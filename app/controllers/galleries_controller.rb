class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]

  def index
    @galleries = Gallery.active
    @status = user_signed_in?
    @id = current_user.id
  end

  def new
    @gallery = current_user.galleries.build
  end

  def create
    @gallery = current_user.galleries.build(gallery_params)
    respond_to do |format|
      if @gallery.save
        format.html { redirect_to galleries_path, notice: 'Gallery was successfully created.' }
        format.json { render :show, status: :created, location: @gallery }
      else
        format.html { render :new }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_params
      params.require(:gallery).permit(:name, :archive)
    end
end

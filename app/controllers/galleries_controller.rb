class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy, :archive, :un_archive]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @galleries = Gallery.active
    @home_page = true
    if user_signed_in?
    	redirect_to user_path(current_user.id)
    end
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

  def edit
  end

  def show
    p 'in gallery show action'
    @collections = @gallery.collections
  end

  def update
    respond_to do |format|
      if @gallery.update(gallery_params)
        format.html { redirect_to user_path, notice: 'Gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @gallery }
      else
        format.html { render :edit }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def archive
    @gallery.update_attribute(:archive, true)
    redirect_to galleries_path
  end

  def un_archive
    p 'in gallery un_archive show action'

    @gallery.update_attribute(:archive, false)
    redirect_to galleries_path
  end

  def archived
    @archived_galleries = Gallery.archived
    render '_archived'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_params
      params.require(:gallery).permit(:name, :archive, :user_id)
    end
end

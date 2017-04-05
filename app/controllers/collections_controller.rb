class CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :edit, :update, :destroy, :archive, :thumbnail]
  before_action :authenticate_user!, except: [:index, :show]


  # GET /collections
  # GET /collections.json
  def index
    @gallery = Gallery.find(params["gallery_id"])
    @collections = @gallery.collections.active
  end

  # GET /collections/1
  # GET /collections/1.json
  def show
  	# p "collections controller"
  end

  # GET /collections/new
  def new
    @gallery = Gallery.find(params["gallery_id"])
    @collection = @gallery.collections.build
  end

  # GET /collections/1/edit
  def edit
    @galleries = Gallery.active
  end

  # POST /collections
  # POST /collections.json
  def create
    @gallery = Gallery.find(params["gallery_id"])
    @collection = @gallery.collections.build(collection_params)

    respond_to do |format|
      if @collection.save
        format.html { redirect_to @collection, notice: 'Collection was successfully created.' }
        format.json { render :show, status: :created, location: @collection }
      else
        format.html { render :new }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collections/1
  # PATCH/PUT /collections/1.json
  def update
    respond_to do |format|
      if @collection.update(collection_params)
        format.html { redirect_to @collection, notice: 'Collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @collection }
      else
        format.html { render :edit }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  def thumbnail
    id_of_item = params["format"]
    @collection.thumbnail = id_of_item
    @collection.save
    redirect_to @collection, notice: 'Thumbnail set.'
  end

  def archive
  	@collection.update_attribute(:archive, true)
  	redirect_to gallery_collections_path(@collection.gallery_id)
  end
  # DELETE /collections/1
  # DELETE /collections/1.json
  def destroy
    gallery = @collection.gallery_id
    if @collection.destroy
      message = "Collection destroyed successfully"
    else
      message = "Collection could not be destroyed because it has images in it"
    end

    respond_to do |format|
      format.html { redirect_to gallery_collections_path(gallery), notice: message }
      format.json { head :no_content }
    end
  end

  private
    def set_collection
      @collection = Collection.find(params[:id])
    end

    def collection_params
      params.require(:collection).permit(:name, :archive, :thumbnail, :gallery_id)
    end
end

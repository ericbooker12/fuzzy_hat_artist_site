class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_collection, only: [:index, :new, :create, :edit, :destroy, :show_new_item_form]

  def index
    @items = @collection.items
  end

  def new
    @item = Item.new
  end

  def show
  end

  def edit
  end

  def create
    @item = @collection.items.build(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to collection_path(@item.collection_id), notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to collection_items_path(@item.collection_id), notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @collection_item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	@item.destroy
  	redirect_to collection_path(@collection)
  end

  def show_new_item_form
    @item = Item.new
    respond_to do |format|
        format.js
    end
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def set_collection
      @collection = Collection.find(params["collection_id"])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :image, :width, :length, :height, :collection_id)
    end
end

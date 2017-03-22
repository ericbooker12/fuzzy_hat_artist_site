class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @collection = Collection.find(params["collection_id"])
    @items = @collection.items
  end

  def new
    @item = Item.new
    @collection = Collection.find(params["collection_id"])
  end

  def show
  end

  def create
    id = params[:collection_id]
    @collection = Collection.find(id)
    @item = @collection.items.build(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to collection_items_path, notice: 'Collection was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :image, :width, :length, :height, :collection_id)
    end
end

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new(page_params)
    if item.save
      redirect_to item_path(item)
    else
      render :new
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(page_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path
  end

  private
    def page_params
      params.require(:item).permit(:title, :owner, :description, :priority)
    end
end

class ItemsController < ApplicationController
  
  def index
    @item = Item.new
    @items = Item.includes(:user)
  end

  def new
    @item = Item.new
  end

  def destroy
  end
end

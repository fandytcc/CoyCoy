class ListItemsController < ApplicationController
  before_action :authenticate_user!

  def new
    @list_item = ListItem.new(list_item_params)
  end

  def create
    @list_item = current_user.cart.build_list_item(list_item_params)
    
    if @list_item.save
      redirect_to root_path, notice: "added to cart"
    end
  end

  private

  def list_item_params
    params.require(:list_item).permit(:quantity, :cart, :product)
  end

end

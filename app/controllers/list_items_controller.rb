class ListItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    

  end

  private

  def list_item_params
    params.require(:list_item).permit(:quantity, :cart, :product)
  end

end

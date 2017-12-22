class ListItemsController < ApplicationController
  before_action :set_product, only: [:create]
  before_action :authenticate_user!

  def new
    @list_item = ListItem.new
  end

  def create

    @list_item = current_user.cart.list_items.build(cart: current_user.cart, product: @product)

    if @list_item.save
      redirect_to root_path, notice: "#{@product.name} added to your cart."
    end
  end

  private

  def set_product
    @product = Product.find(list_item_params[:product])
  end

  def list_item_params
    params.permit(:quantity, :cart, :product)
  end

end

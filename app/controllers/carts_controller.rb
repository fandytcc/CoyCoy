class CartsController < ApplicationController
  def show
    @list_item = current_user.cart.products
  end
end

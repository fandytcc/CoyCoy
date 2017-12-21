class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @carted_products = current_user.cart.carted_products
  end


end

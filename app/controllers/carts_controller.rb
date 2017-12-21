class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @carted_products = current_user.cart.carted_products
  end

  def show

  end

end

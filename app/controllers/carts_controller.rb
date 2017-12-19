class CartsController < ApplicationController
  def show
    @list_item = user.products
  end


end

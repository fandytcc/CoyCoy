class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  def index
    @products = Product.all
  end

  def show
    # empty
  end

  def new
  end

  def create

  end

  def edit
  end

  def update

  end


  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :brand)
  end

end

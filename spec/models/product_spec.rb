require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "creation" do
    let(:product) {create :product}

    it "can create and save a product" do
      expect(Product.all).to include(product)
    end
  end


  describe "validations" do
    it "does not validate without a name" do
      product = Product.new()
      product.valid?
      expect(product.errors).to have_key(:name)
    end

    it "does not validate without a price" do
      product = Product.new()
      product.valid?
      expect(product.errors).to have_key(:price)
    end
  end
end

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

  describe 'validations for length of attributes' do
    it { is_expected.to validate_length_of(:name).is_at_most(50) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
    it { is_expected.to validate_length_of(:brand).is_at_most(50) }
  end
end

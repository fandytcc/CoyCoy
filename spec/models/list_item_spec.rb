require 'rails_helper'

RSpec.describe ListItem, type: :model do
  describe "Creation" do
    let(:cart) {create :cart}
    let(:product) {create :product}

    it "creates a valid list_item for cart and product" do
      list_item = ListItem.create!(cart: cart, product: product)
      expect(ListItem.all).to include(list_item)
    end

  end

end

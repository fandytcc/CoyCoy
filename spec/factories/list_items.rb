FactoryBot.define do
  factory :list_item do
    quantity rand(1..10)
    purchased false
    total_price "9.99"
    cart { build(:cart) }
    product {build(:product)}
  end
end

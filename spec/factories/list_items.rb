FactoryBot.define do
  factory :list_item do
    quantity 1
    purchased false
    total_price "9.99"
    cart nil
    product nil
  end
end

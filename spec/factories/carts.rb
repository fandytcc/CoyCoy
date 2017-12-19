FactoryBot.define do
  factory :cart do
    total {Faker::Commerce.price}
  end
end

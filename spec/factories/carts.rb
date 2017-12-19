FactoryBot.define do
  factory :cart do
    user {build(:user)}
    total {Faker::Commerce.price}
  end
end

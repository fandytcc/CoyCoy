FactoryBot.define do
  factory :cart do
    user {build(:user)}
    total "99.99"
  end
end

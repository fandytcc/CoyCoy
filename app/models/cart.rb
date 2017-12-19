class Cart < ApplicationRecord
  belongs_to :user
  has_many :list_items, dependent: :destroy
  has_many :cart_products, through: :list_items, source: :product
end

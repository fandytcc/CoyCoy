class Cart < ApplicationRecord
  belongs_to :user
  has_many :carted_products, through: :list_items, source: :product, dependent: :destroy
end

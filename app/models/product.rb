class Product < ApplicationRecord
  has_many :list_items, dependent: :destroy
  has_many :product_carts, through: :list_items, source: :cart

  validates :name, presence: true, length: { maximum: 50 }
  validates :price, presence: true
  validates :description, length: { maximum: 500 }
  validates :brand, length: { maximum: 50 }

  def currency
    "€"
  end

  def self.order_by_price
    order :price
  end

end

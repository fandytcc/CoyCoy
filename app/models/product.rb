class Product < ApplicationRecord
  has_many :list_items, dependent: :destroy
  has_many :carts, through: :list_items, source: :cart

  validates :name, presence: true
  validates :price, presence: true


  def self.order_by_price
    order :price
  end

end

class Product < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true


  def self.order_by_price
    order :price
  end

end

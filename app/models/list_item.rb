class ListItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  # limit the amount of items to 9999
  validates :quantity, length: { maximum: 4 }
end

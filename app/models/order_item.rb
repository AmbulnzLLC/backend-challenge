class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :pizza_type

  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
end

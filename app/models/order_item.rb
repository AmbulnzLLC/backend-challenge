class OrderItem < ApplicationRecord
  belongs_to :pizza_type
  belongs_to :order

  validates :pizza_type_id, uniqueness: { scope: :order_id }
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }
end

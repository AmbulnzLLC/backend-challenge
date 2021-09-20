class PizzaType < ApplicationRecord
  validates :name, :price, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 64 }
  validates :price, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 999_999_999.99, allow_nil: true }
end

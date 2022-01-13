class PizzaType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { only_float: true, greater_than: 0 }


end

class Order < ApplicationRecord
  has_many :order_items
  has_one :user

  accepts_nested_attributes_for :order_items
end

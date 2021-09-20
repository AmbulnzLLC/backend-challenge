class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  validates :order_items, length: { minimum: 1 }

  accepts_nested_attributes_for :order_items, reject_if: proc { |attributes| !attributes['quantity'].to_i.positive? },
                                              allow_destroy: true
end

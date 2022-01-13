class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user

  accepts_nested_attributes_for :order_items, allow_destroy: true

  scope :for_current_user, -> (id) { where(user_id: id) }

  def total_sum
    order_items.inject(0) { |sum, item| sum + item.quantity * item.pizza_type.price }
  end

end

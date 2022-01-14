# frozen_string_literal: true

class CountOrder
  include Interactor

  delegate :order_id, to: :context

  def call
    order = Order.includes(order_items: :pizza).find(order_id)

    sum = 0

    order.order_items.each do |item|
      sum += item.pizza.price * item.quantity
    end

    context.sum = sum
  end
end

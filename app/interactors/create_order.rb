# frozen_string_literal: true

class CreateOrder
  include Interactor

  delegate :items, to: :context

  def call
    order = Order.create
    order.order_items.create(items.map { |item| { pizza_id: item[:pizza], quantity: item[:quantity] } })

    context.order_id = order.id
    context.order = order
  end
end

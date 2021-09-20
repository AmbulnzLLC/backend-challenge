module OrdersHelper
  def total_price(order)
    order.order_item.map { |order_item| order_item.quantity * order_item.pizza_types.sum(:price) }.sum
  end
end

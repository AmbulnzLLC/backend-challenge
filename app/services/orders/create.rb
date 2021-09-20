module Orders
  class Create
    BONUSES = {
      bronze: '0.02',
      gold: '0.03',
      black: '0.05'
    }.freeze

    attr_reader :order

    def initialize(user:, order_params: {})
      @order = Order.new(order_params.merge(user: user))
    end

    def call
      return false if @order.invalid?

      calculate_costs
      order.save
    end

    def calculate_costs
      order.cost = cost
      order.discount = discount
      order.total_cost = order.cost * (1 - order.discount.to_f)
    end

    def cost
      @cost ||= order.order_items.map do |item|
        item.quantity * item.pizza_type.price
      end.sum
    end

    def discount
      return BONUSES[:black] if order.cost > 100

      @discount ||=
        case order.cost
        when 50.00, 74.99 then BONUSES[:bronze]
        when 75.00, 99.99 then BONUSES[:gold]
        else 0
        end
    end
  end
end

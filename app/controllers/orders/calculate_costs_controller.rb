module Orders
  class CalculateCostsController < OrdersController
    def create
      service = Orders::Create.new(user: current_user, order_params: order_params)
      service.calculate_costs
      @order = service.order
      @pizza_types = PizzaType.order(:name).pluck(:name, :id)
      @order.order_items.build unless @order.order_items.any?

      respond_to do |format|
        format.js { render 'orders/new' }
      end
    end
  end
end

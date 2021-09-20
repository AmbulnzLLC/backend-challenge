class OrdersController < ApplicationController
  append_before_action :pundit_authorize

  def index
    @orders = policy_scope(Order).includes(:user, order_items: :pizza_type)
                                 .order(:created_at)

    respond_to do |format|
      format.html
      format.json { render json: @orders }
    end
  end

  def new
    service = Orders::Create.new(user: current_user, order_params: order_params)
    service.calculate_costs
    @order = service.order
    @pizza_types = PizzaType.order(:name).pluck(:name, :id)
    @order.order_items.build unless @order.order_items.any?
  end

  def create
    service = Orders::Create.new(user: current_user, order_params: order_params)
    @order = service.order

    if service.call
      redirect_to root_path
    else
      @order.build_order_items unless @order.order_items.any?

      render :new, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.fetch(:order, {}).permit(order_items_attributes: %i[order_id pizza_type_id quantity _destroy])
  end

  def pundit_authorize
    authorize @order || Order
  end
end

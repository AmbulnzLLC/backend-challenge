# frozen_string_literal: true

class OrderController < ApplicationController
  def root; end

  def index
    # TODO: add paginations
    orders = Order.all

    render json: orders, eachSerializer: OrderSerializer
  end

  def create
    validator = ::OrderForm.new(create_params)
    if validator.valid?
      iteractor = PlaceOrder.call(items: create_params)

      render json: iteractor.order
    else
      render json: { errors: validator.errors }
    end
  end

  def pizzas
    list = Pizza.all

    render json: list, eachSerializer: PizzaSerializer
  end

  def show
    order = Order.find(params[:id])

    render json: order
  end

  private

  def create_params
    params.require(:order)
  end
end

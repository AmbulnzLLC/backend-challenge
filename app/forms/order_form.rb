# frozen_string_literal: true

class OrderForm
  attr_reader :errors

  def initialize(order)
    @order = order.map { |item| item }
    @errors = []
  end

  def valid?
    check_pizzas
    check_quantity

    @errors.empty?
  end

  private

  def check_pizzas
    pp @order
    valid = @order.all? { |item| item[:pizza] && !(item[:pizza] =~ /^[0-9]*$/).nil? }
    @errors.push('One or more pizza is unvalid!') unless valid

    pizza_ids = @order.map { |item| item[:pizza] }.uniq
    valid = pizza_ids.length == Pizza.where(id: pizza_ids).count
    @errors.push('One or more pizza is unvalid!') unless valid
  end

  def check_quantity
    valid = @order.all? { |item| item[:quantity] && !(item[:quantity] =~ /^[0-9]*$/).nil? && item[:quantity] != 0 }
    @errors.push('One or more quantity is unvalid!') unless valid
  end
end

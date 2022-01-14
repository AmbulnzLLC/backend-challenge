# frozen_string_literal: true

require 'test_helper'

class CreateOrderTest < ActiveSupport::TestCase
  test 'call creating order' do
    assert_difference -> { Order.count } => 1, -> { OrderItem.count } => 2 do
      CreateOrder.call(items: [{ pizza: 1, quantity: 2 }, { pizza: 3, quantity: 3 }])
    end
  end
end

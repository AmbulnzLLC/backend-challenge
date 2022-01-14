# frozen_string_literal: true

require 'test_helper'

class CountOrderTest < ActiveSupport::TestCase
  test 'get 15% discount ' do
    order = Order.first
    OrderDiscount.call(sum: 120, order: order)

    assert_equal(102.0, order.total)
  end

  test 'get 10% discount' do
    order = Order.first
    OrderDiscount.call(sum: 80, order: order)

    assert_equal(72.0, order.total)
  end

  test 'get 5% discount' do
    order = Order.first
    OrderDiscount.call(sum: 60, order: order)

    assert_equal(57.0, order.total)
  end

  test 'get 0% discount' do
    order = Order.first
    OrderDiscount.call(sum: 30, order: order)

    assert_equal(30.0, order.total)
  end
end

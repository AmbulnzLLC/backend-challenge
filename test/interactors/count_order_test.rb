# frozen_string_literal: true

require 'test_helper'

class CountOrderTest < ActiveSupport::TestCase
  test 'call first order' do
    interactor = CountOrder.call(order_id: 1)

    assert_equal(20.0, interactor.sum)
  end
end

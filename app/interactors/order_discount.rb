# frozen_string_literal: true

class OrderDiscount
  include Interactor

  delegate :sum, to: :context
  delegate :order, to: :context

  def call
    discount = 1

    discount = 0.95 if sum > 50
    discount = 0.90 if sum > 75
    discount = 0.85 if sum > 100

    order.update(total: (sum * discount).round(2))
  end
end

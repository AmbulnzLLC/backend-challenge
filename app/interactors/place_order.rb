# frozen_string_literal: true

class PlaceOrder
  include Interactor::Organizer

  organize CreateOrder, CountOrder, OrderDiscount
end

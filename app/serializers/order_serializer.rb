# frozen_string_literal: true

class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total, :items

  def items
    list = object.order_items.includes(:pizza)

    list.map do |item|
      {
        id: item.id,
        quantity: item.quantity,
        pizza: item.pizza.name
      }
    end
  end
end

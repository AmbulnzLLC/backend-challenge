# This will guess the OrderItem class
FactoryBot.define do
  factory :order_item do
    pizza_type factory: :pizza_type
    order factory: :order
    quantity { 3 }
  end

  factory :another_order_item, class: 'OrderItem' do
    pizza_type factory: :another_pizza_type
    quantity { -2 }
  end
end

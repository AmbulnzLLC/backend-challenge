# This will guess the PizzaType class
FactoryBot.define do
  factory :pizza_type do
    name { "Margherita" }
    price { 5.33 }
  end

  factory :another_pizza_type, class: 'PizzaType' do
    name { "TEST" }
    price { -3.44 }
  end
end

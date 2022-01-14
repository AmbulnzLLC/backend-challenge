# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pizza.create([
               { id: 1, name: 'Sicilian', price: 10.0 },
               { id: 2, name: 'Capricciosa', price: 12.0 },
               { id: 3, name: 'Quattro Formaggi', price: 14.5 },
               { id: 4, name: 'Napoletana', price: 16.0 },
               { id: 5, name: 'Caprese', price: 18.5 },
               { id: 6, name: 'Calzone', price: 20.0 },
               { id: 7, name: 'Margherita', price: 25.0 }
             ])

Order.create([
               { id: 1, total: 20.0 },
               { id: 2, total: 69.3 },
               { id: 3, total: 69.3 },
               { id: 4, total: 37.0 },
               { id: 5, total: 109.65 }
             ])

OrderItem.create([
                   { id: 1, pizza_id: 1, order_id: 1, quantity: 2 },
                   { id: 2, pizza_id: 2, order_id: 2, quantity: 1 },
                   { id: 3, pizza_id: 3, order_id: 2, quantity: 2 },
                   { id: 4, pizza_id: 2, order_id: 2, quantity: 3 },
                   { id: 5, pizza_id: 3, order_id: 3, quantity: 2 },
                   { id: 6, pizza_id: 4, order_id: 3, quantity: 3 },
                   { id: 7, pizza_id: 5, order_id: 4, quantity: 2 },
                   { id: 8, pizza_id: 4, order_id: 5, quantity: 4 },
                   { id: 9, pizza_id: 6, order_id: 5, quantity: 2 },
                   { id: 10, pizza_id: 7, order_id: 5, quantity: 1 }
                 ])

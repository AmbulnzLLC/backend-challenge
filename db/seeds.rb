# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless PizzaType.any?
  PizzaType.insert_all(
    10.times.map {
      { name: Faker::Food.dish,
        price: Faker::Commerce.price(range: 1..999),
        created_at: Time.current,
        updated_at: Time.current }
      }
  )
end

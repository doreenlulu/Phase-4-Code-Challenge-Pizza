# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

5.times do
    Restaurant.create(name:Faker::Restaurant.name, address: Faker::Address.full_address)
end

Pizza.destroy_all

5.times do
    ingredients = []
    3.times do
        ingredients << Faker::Food.ingredient
    end
    Pizza.create(name:ingredients[-1], ingredients:ingredients.join(", "))
end

RestaurantPizza.destroy_all

RestaurantPizza.create(pizza_id: 1, restaurant_id: 5)
RestaurantPizza.create(pizza_id: 6, restaurant_id: 3)
RestaurantPizza.create(pizza_id: 4, restaurant_id: 1)
RestaurantPizza.create(pizza_id: 5, restaurant_id: 2)
RestaurantPizza.create(pizza_id: 3, restaurant_id: 6)
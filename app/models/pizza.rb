class Pizza < ApplicationRecord
    has_many :restaurant_pizza
    has_many :restaurant, through: :restaurant_pizza
end

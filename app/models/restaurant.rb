class Restaurant < ApplicationRecord
    has_many :restaurant_pizza, dependent: :destroy
    has_many :pizza, through: :restaurant_pizza
end

class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant
    belongs_to :pizza

    validates :price, presence: true
    validate :price_scope

    def price_scope
        if (price < 1 || price > 30)
            errors.add(:price, "must have a price between 1 and 30")
        end
    end
end

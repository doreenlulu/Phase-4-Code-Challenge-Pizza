class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant
    belongs_to :pizza

    validates :price, presence: true
    validates :price, numericality: {in: 1..30}

    # def price_scope
    #     unless(price >1 && price< 30)
    #         errors.add(:price, "must be between 1-30")
    #     end
    # end
end

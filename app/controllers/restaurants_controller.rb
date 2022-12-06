class RestaurantsController < ApplicationController
     rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
     def index
        render json: Restaurant.all
    end

    def show
        restaurant = find_restaurant
        render json: restaurant, serializer: IndividualrestaurantSerializer
    end

    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        render json: restaurant, status: :not_found
    end

    private

    def find_restaurant
        Restaurant.find(id: params[:id])
    end

    def render_not_found_response
    render json: {"error": "Restaurant not found"}, status: :not_found
    end
end

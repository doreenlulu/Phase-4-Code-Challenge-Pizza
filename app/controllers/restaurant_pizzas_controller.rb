class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    skip_before_action :verify_authenticity_token
    
    # def index
    # render json: RestaurantPizza.all
    # end

    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza, status: :created
        # render json: RestaurantPizza.create!(restaurant_pizza_params),status: :created
    end

    private

    def restaurant_pizza_params
        params.permit(:restaurant_id, :pizza_id, :price)
    end

    def render_unprocessable_entity_response(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
end

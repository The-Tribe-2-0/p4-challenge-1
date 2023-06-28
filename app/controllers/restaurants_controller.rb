class RestaurantsController < ApplicationController
    def index
      restaurants = Restaurant.all
      render json: restaurants.to_json(only: [:id, :name, :address])
    end
  
    def show
      restaurant = Restaurant.find_by(id: params[:id])
      if restaurant
        render json: restaurant.to_json(only: [:id, :name, :address], include: { pizzas: { only: [:id, :name, :ingredients] } })
      else
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
  
    def destroy
      restaurant = Restaurant.find_by(id: params[:id])
      if restaurant
        restaurant.destroy
        head :no_content
      else
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
  end
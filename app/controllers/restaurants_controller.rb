class RestaurantsController < ApplicationController


  def index
   @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new

  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path
    else
      redirect_to new_restaurant_path
    end
  end

  def restaurant_params
      params.require(:restaurant).permit(:name, :capcity)
    end

end

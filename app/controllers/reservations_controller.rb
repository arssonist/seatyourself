class ReservationsController < ApplicationController
  before_action do
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def index
    @reservations = @restaurant.reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
    ensure_restaurant_match
  end

  def new
    @reservation = Reservation.new
  end
end

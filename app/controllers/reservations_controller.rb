class ReservationsController < ApplicationController
  before_action do
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def index
    @reservations = @restaurant.reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
    if @reservation.save
      redirect_to [@restaurant,@reservation]
    else
      redirect_to new_restaurant_reservation_path
  end
end
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.restaurant = @restaurant

    if @reservation.save
      redirect_to [@restaurant,@reservation]
    else
      redirect_to new_restaurant_reservation_path
    end

  end

  def reservation_params
    params.require(:reservation).permit(:number_of_guests, :date)
  end

end

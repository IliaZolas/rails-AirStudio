class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @studio = Studio.find(params[:studio_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @studio = Studio.find(params[:studio_id])
    @booking.studio = @studio
    @booking.total_price = (@booking.checkout-@booking.checkin).to_int * @studio.price
    @booking.user = current_user
    @booking.save
    redirect_to my_bookings_path
  end

  def booking_manager
    # binding.pry
    @bookings = Booking.where(user: current_user)
    @studios = Studio.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin, :checkout)
  end
end

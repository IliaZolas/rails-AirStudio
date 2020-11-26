class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @studio = Studio.find(params[:studio_id])
  end

  def create
    @booking = Booking.new
    @studio = Studio.find(params[:studio_id])
    @booking.studio = @studio
    raise
    @booking.save
    redirect_to studios_path
  end

  def destroy
  end

  private

  # def booking_params
  #   params.require(:booking).permit(:checkin, :checkout)
  # end
end

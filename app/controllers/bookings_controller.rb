class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @studio = Studio.find(params[:studio_id])
  end

  def create
    # @user = user.find(params[:user_id])
    # @studio = studio.find(params[:studio_id])
    raise
  end

  def destroy
  end

end

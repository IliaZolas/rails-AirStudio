class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    # @user = user.find(params[:user_id])
    # @studio = studio.find(params[:studio_id])
  end

  def destroy
  end

end

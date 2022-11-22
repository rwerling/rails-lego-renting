class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @lego = Lego.find(params[:lego_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.lego = Lego.find(params[:lego_id])
    @lego = @booking.lego
    @booking.save!
    redirect_to @lego
  end

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

 private


  def booking_params
    params.require(:booking).permit(:lego, :start_date, :end_date)
  end
end

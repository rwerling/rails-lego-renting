class BookingsController < ApplicationController

  def index
    # @bookings = Booking.all

    @myactivebookings = Booking.where(user: current_user)
    mylegos = Lego.where(user: current_user)

    @mypassivebookings = Booking.all.select { |b| mylegos.include?(b.lego) }
  end

  def new
    @booking = Booking.new
    @lego = Lego.find(params[:lego_id])
  end

  def create
    # @booking = Booking.new(booking_params)
    # @booking.user = current_user
    # @booking.lego = Lego.find(params[:lego_id])
    # @lego = Lego.find(params[:lego_id])
    # date_dif = Time.diff(Time.parse(@booking.start_date), Time.parse(@booking.end_date))[:day]
    # calculation = date_dif * (@lego.number_of_parts * 2)
    # @booking.final_price = calculation
    # @lego = @booking.lego
    # @booking.save!
    # redirect_to @lego

    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.lego = Lego.find(params[:lego_id])
    date_dif = Time.diff(Time.parse(@booking.start_date), Time.parse(@booking.end_date))[:day]
    calculation = date_dif * (@booking.lego.number_of_parts * 2)
    @booking.final_price = calculation
    @booking.save!
    redirect_to @booking.lego
  end

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

 private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

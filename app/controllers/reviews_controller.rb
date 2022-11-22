class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @lego = Lego.where(id: @booking.lego_id)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end

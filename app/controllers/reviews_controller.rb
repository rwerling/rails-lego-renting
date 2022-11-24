class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @lego = Lego.find(params[:lego_id])
    @review.save
    redirect_to lego_path(@lego)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end

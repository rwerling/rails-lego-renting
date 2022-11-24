class LegosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @legos = Lego.all
  end

  def index
    if params[:query].present?
      @legos = Lego.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @legos = Lego.all
    end
  end

  def show
    @lego = Lego.find(params[:id])
    @booking = Booking.where(user: current_user).last
    @review = Review.new
  end

  def new
    @lego = Lego.new
  end

  def create
    @lego = Lego.new(lego_params)
    @lego.user_id = current_user.id
    @lego.save
    redirect_to legos_path
  end

  def destroy
    @lego = Lego.find(params[:id])
    @lego.destroy
    redirect_to legos_path, status: :see_other
  end

  private

  def lego_params
    params.require(:lego).permit(:title, :number_of_parts, :photo)
  end
end

class LegosController < ApplicationController
  def index
    @legos = Lego.all
  end

  def show
    @lego = Lego.find(params[:id])
  end

  def new
    @lego = Lego.new
  end

  def create
    @lego = Lego.new(lego_params)
  end

  def destroy
    @lego = Lego.find(params[:id])
    @lego.destroy
    redirect_to legos_path
  end

  private

  def lego_params
    params.require(:lego).permit(:title, :number_of_parts)
  end
end

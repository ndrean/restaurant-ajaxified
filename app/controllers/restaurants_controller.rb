class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review     = Review.new
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    # indicate to controller how to respond with the format
    # required in the HTTP request "Accept" header
    respond_to do |format|
      format.html { redirect_to restaurants_path }
      format.js
    end
  end
end

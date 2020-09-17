class RestaurantsController < ApplicationController
  # GET http://localhost:3000/restaurants
  before_action :set_restaurant, only: [:show]


  def index
    @restaurants = Restaurant.all
  end


  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end


  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created !'
    else
      render :new
    end
  end

  # GET /restaurants/1
  def show
  end












   private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end

end

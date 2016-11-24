class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
    def index         # GET /restaurant
      @restaurant = Restaurant.all
  end

  def show          # GET /task/restaurant/:id

  end

  def new           # GET /restaurants/new
      @restaurant = Restaurant.new
  end

  def create        # POST /restaurant
      Restaurant.create(restaurant_params)

      redirect_to restaurant_path
  end

  def edit          # GET /restaurants/:id/edit
      @restaurant
  end

  def update        # PATCH /restaurant/:index
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)

  end

  def destroy       # DELETE /restaurant/:id
      @restaurant.destroy
      redirect_to restaurants_path
  end
private
def restaurant_params
      params.require(:restaurant_params).permit(:name, :category, :phone_number, :stars, :description)
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
end

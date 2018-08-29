class FoodsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @foods = Food.all
    @index_page = true
    #@foods = Food.where.not(latitude: nil, longitude: nil)

    meal_icon = "group_6.png"


    @markers = @foods.map do |food|
      # binding.pry
      {
        lat: food.business.latitude,
        lng: food.business.longitude,
        icon: meal_icon,
        food_id: food.id,
        restaurant: {
          name: food.business.name,
          address: food.business.address
        }
      }
    end
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.business = current_user.business


    if @food.save
     redirect_to business_dashboard_path
   else
     render :new
   end
  end

  def edit
    find_foods
  end

  def update
    find_foods
    @foods.update(food_params)
  end

  def destroy
    find_foods
    @foods.destroy
  end

  private

  def find_foods
    @foods = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :description, :portion, :dietary_category, :food_type, :business_id, :order_before, :pickup_start, :pickup_end, :sku, :price_cents, :photo)
  end


end

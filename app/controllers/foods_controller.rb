class FoodsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]




  def index
    @foods = Food.all
    @index_page = true
    #@foods = Food.where.not(latitude: nil, longitude: nil)

    @markers = @foods.map do |food|
      {
        lat: food.business.latitude,
        lng: food.business.longitude,
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
    @food.business = Business.find(params[:business_id])

    if @food.save
     redirect_to business_path
   else
     redirect_to business_path
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
    params.require(:food).permit(:name, :description, :price, :portion, :order_before, :pickup_start, :pickup, :end, :dietary_category, :business_id, :photo)
  end


end

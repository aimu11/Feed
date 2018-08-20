class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    find_foods
    @foods
  end

  def new
    @foods = Food.new(food_params)
  end

  def create
    @foods = Food.new(food_params)
    @food.save
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
  end

  private

  def find_foods
    @foods = Food.find(params[food_params])
  end

  def food_params
    params.require(:food).permit(:name, :description, :price, :portion, :order_before, :pickup_start, :pickup, :end, :dietary_category, :business_id)
  end


end

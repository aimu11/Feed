class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    find_foods
  end

  def new
  end

  def create
    @foods = Food.new(food_params)
    @foods.business = Business.find(params[:business_id])

    if @foods.save
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
    params.require(:food).permit(:name, :description, :price, :portion, :order_before, :pickup_start, :pickup, :end, :dietary_category, :business_id)
  end


end

class CartDetailsController < ApplicationController
  def new
  end

  def create
    food = Food.find(params[:food_id])
    cart = current_user.customer.cart



    cart_detail = CartDetail.new(
      food: food,
      quantity: 1,
      cart: cart
      )



    if cart_detail.save
      if food.portion > 0
        food.portion -= 1
      else
        food.portion = 0
      end
      food.save
      redirect_to foods_path
    else
      redirect_to dashboard_path
    end

  end
end

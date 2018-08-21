class OrdersController < ApplicationController
  def index
    # @orders.customer = current_user
    @orders = Order.all
  end

  def new
  end

  def create
    @order = Order.new(order_params)
    @order.customer = current_user
    @order.food = Food.find(params[:id])

    if @order.save
     redirect_to order_path
   else
     redirect_to current_user_path
   end
  end

  private

  def order_params
    params.require(:order).permit(:customer_id, :food_id)
  end

end

class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_params)
    @order.business =
    @order.customer =

    if @order.save
     redirect_to order_path
   else
     redirect_to current_user_path
   end
  end

  def new
  end

  private

  def order_params
    params.require(:order).permit()
  end

end

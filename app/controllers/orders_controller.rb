class OrdersController < ApplicationController
  def index
    # @orders.customer = current_user
    @orders = Order.all
  end

  def new
  end

  def create
   #  food = Food.find(params[:food_id])

   #  @order  = Order.create!(food: food, customer: current_user.customer)

   #  if @order.save
   #   redirect_to dashboard_path
   # else
   #   redirect_to foods_path
   # end

   food = Food.find(params[:food_id])
   customer = current_user.customer
   order = Order.create!(
    customer: current_user.customer,
    food: food,
    state: 'pending',
    food_sku: food.sku,
    price: food.price
    )

   redirect_to new_order_payment_path(order)
  end

  # def show
  #   @order = current_user.orders.where(state: 'paid').find(params[:id])
  # end

  private

  def order_params
    params.require(:order).permit(:customer_id, :food_id)
  end

end

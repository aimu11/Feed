class OrdersController < ApplicationController
  def index
    # @orders.customer = current_user
    @orders = Order.all
  end

  def new
  end

  def create
    cart = current_user.customer.cart
    customer = current_user.customer
    cart.cart_details.map(&:food).each do |food|
      order = Order.create!(
        customer: customer,
        food: food,
        state: 'pending',
        food_sku: food.sku,
        price: food.price,
        cart: cart
      )
    end

    redirect_to new_cart_payment_path(cart)
  end

  # def show
  #   @order = current_user.orders.where(state: 'paid').find(params[:id])
  # end

  private

  def order_params
    params.require(:order).permit(:customer_id, :food_id)
  end

end

class CartsController < ApplicationController
  def show
    @cart = current_user.customer.cart
  end

  def new
  end

  def create
   customer = current_user.customer

   Cart.create!(
    number_of_element: 0,
    customer: customer
    )

  end
end

class PaymentsController < ApplicationController
  before_action :set_order, except: [:cart_new, :cart_create]

  def new
  end

  def cart_new
    @cart = Cart.find(params[:cart_id])
  end

  def cart_create
    @cart = Cart.find(params[:cart_id])

    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    price_cents = @cart.orders.sum(&:price_cents)
    currency = @cart.orders.first.price.currency #TODO FIX THIS FOR INTERNATIONAL
    order_ids = @cart.order_ids
    food_skus = @cart.cart_details.map(&:food).map(&:sku)

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       price_cents,
      description:  "Payment for food (food_skus) for orders (#{order_ids.join(',')})",
      currency:     currency
    )

    @cart.orders.each do |order|
      order.update(payment: charge.to_json, state: 'paid')
    end

    current_user.customer.cart = Cart.new
    current_user.customer.save!

    @cart.customer_id = nil
    @cart.save!

    redirect_to dashboard_path

    rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_cart_payment_path(@cart)
  end

  def create
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.price_cents,
      description:  "Payment for food #{@order.food_sku} for order #{@order.id}",
      currency:     @order.price.currency
    )

    @order.update(payment: charge.to_json, state: 'paid')
    redirect_to dashboard_path

    rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

private

  def set_order
    @order = current_user.customer.orders.where(state: 'pending').find(params[:order_id])
  end
end

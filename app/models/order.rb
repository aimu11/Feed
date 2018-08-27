class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :food
  belongs_to :cart, optional: true

  monetize :price_cents
end


# make a new table "cart_items"
# user_id: cart_owner
# food_id: food

# class User
# has_many :cart_items

# class CartsController
#
#   def show
#     @cart_items = current_user.cart_items
#     @foods = current_user.cart_items.map(&:food)
#
#   def add_item
#     @item = CardItem.new(params[:food_id])
#     @item.user = current_user
#     if @item.save # etc..
#
#

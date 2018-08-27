class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_one :cart, dependent: :destroy
  belongs_to :user

  before_create :add_cart

  private

  def add_cart
    self.cart = Cart.new
  end
end

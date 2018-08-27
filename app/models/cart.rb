class Cart < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :cart_details, dependent: :destroy
  belongs_to :customer, optional: true

  # monetize :price_cents

  def price
    cart_details.map(&:food).sum(&:price)
  end

  def price_cents
    cart_details.map(&:food).sum(&:price_cents)
  end
end

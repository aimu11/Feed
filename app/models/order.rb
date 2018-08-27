class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :food

  monetize :price_cents
end

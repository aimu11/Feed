class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :food

  monetize :amount_cents
end

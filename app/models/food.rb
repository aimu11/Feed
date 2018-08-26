class Food < ApplicationRecord
  belongs_to :business
  has_many :orders, dependent: :destroy
  validates :sku, presence: true, uniqueness: true

  monetize :price_cents
end

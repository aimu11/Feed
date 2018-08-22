class Food < ApplicationRecord
  belongs_to :business
  has_many :orders, dependent: :destroy


end

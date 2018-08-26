class Business < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :orders, through: :foods
  belongs_to :user
end

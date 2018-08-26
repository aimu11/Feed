class Food < ApplicationRecord
  belongs_to :business
  has_many :orders, dependent: :destroy
  validates :sku, presence: true, uniqueness: true

  monetize :price_cents

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?


  mount_uploader :photo, PhotoUploader


end


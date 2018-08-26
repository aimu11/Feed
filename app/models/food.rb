class Food < ApplicationRecord
  belongs_to :business
  has_many :orders, dependent: :destroy
  validates :sku, presence: true, uniqueness: true

  monetize :price_cents
<<<<<<< HEAD

geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  mount_uploader :photo, PhotoUploader

=======
>>>>>>> 9b8d3031d688a8d0118d76d011a8b674a84001b3
end
  

class Business < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :orders, through: :foods

  belongs_to :user
  geocoded_by :address
   after_validation :geocode, if: :will_save_change_to_address?

end

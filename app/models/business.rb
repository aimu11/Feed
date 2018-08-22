class Business < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :orders, through: :foods


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
end

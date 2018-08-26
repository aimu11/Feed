class Food < ApplicationRecord
  belongs_to :business
  has_many :orders, dependent: :destroy

geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user

end

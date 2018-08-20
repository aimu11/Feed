class ChangeColumnFoodTypeinBusinessTypeBusinesses < ActiveRecord::Migration[5.2]
  def change
    rename_column :businesses, :food_type, :business_type
  end
end

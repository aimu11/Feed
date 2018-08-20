class ChangeColumnTypeinFoodTypeinBusinesses < ActiveRecord::Migration[5.2]
  def change
    rename_column :businesses, :type, :food_type
  end
end

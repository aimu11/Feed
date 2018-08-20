class AddDateTimeColumnsToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :order_before, :datetime
    add_column :foods, :pickup_start, :datetime
    add_column :foods, :pickup_end, :datetime
  end
end

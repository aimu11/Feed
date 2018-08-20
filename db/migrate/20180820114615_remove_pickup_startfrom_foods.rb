class RemovePickupStartfromFoods < ActiveRecord::Migration[5.2]
  def change
      remove_column :foods, :pickup_start, :time
  end
end

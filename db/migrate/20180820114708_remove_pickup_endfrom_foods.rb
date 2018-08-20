class RemovePickupEndfromFoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :pickup_end, :time
  end
end

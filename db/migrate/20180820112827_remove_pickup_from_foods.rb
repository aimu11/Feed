class RemovePickupFromFoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :pickup, :string
  end
end

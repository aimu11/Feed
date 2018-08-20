class RemoveOrderBeforefromFoods < ActiveRecord::Migration[5.2]
  def change
      remove_column :foods, :order_before, :time
  end
end

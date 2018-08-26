class RemovePriceFromFoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :price
  end
end

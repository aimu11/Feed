class AddSkuToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :sku, :string
  end
end

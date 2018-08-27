class CreateCartDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_details do |t|
      t.integer :quantity
      t.references :food, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end

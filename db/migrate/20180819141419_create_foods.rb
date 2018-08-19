class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :portion
      t.time :order_before
      t.time :pickup_start
      t.string :pickup
      t.time :end
      t.string :dietary_category
      t.string :food_type
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end

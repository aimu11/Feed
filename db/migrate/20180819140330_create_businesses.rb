class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone_number
      t.string :description
      t.string :dietary_category
      t.string :type

      t.timestamps
    end
  end
end

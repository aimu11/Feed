class AddPriceToFoods < ActiveRecord::Migration[5.2]
  def change
    add_monetize :foods, :price, currency: {present: false}
  end
end

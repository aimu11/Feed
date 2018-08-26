class AddColumnsForStripeToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :state, :string
    add_column :orders, :food_sku, :string
    add_monetize :orders, :price, currency: { present: false }
    add_column :orders, :payment, :json



  end
end

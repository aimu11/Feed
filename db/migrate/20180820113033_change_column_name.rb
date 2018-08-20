class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :foods, :end, :pickup_end
  end
end

class AddIndexToStockQuantity < ActiveRecord::Migration[7.1]
  def change
    add_index :products, :stock_quantity
  end
end

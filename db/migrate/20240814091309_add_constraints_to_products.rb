class AddConstraintsToProducts < ActiveRecord::Migration[7.1]
  def change
    change_column_null :products, :name, false
    add_index :products, :name, unique: true
    change_column :products, :price, :decimal, precision: 14, scale: 4
  end
end

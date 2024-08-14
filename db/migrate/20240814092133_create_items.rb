class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :price, precision: 10, scale: 2, null: false, default: 0.0
      t.integer :stock_quantity, null: false, default: 0

      t.timestamps
    end
  end
end

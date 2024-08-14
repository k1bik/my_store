class AddReferencesToProducts < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :products, :categories
    remove_foreign_key :products, :suppliers
    remove_column :products, :category_id, :bigint
    remove_column :products, :supplier_id, :bigint

    add_reference :products, :category, foreign_key: { on_delete: :cascade }
    add_reference :products, :supplier, foreign_key: { on_delete: :nullify }
  end
end

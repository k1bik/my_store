class DropDescriptionColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :description, :text
  end
end

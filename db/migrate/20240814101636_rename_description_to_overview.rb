class RenameDescriptionToOverview < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :overview, :text
  end
end

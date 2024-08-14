class RemoveDescription < ActiveRecord::Migration[7.1]
  def change
    safety_assured { remove_column :products, :description }
  end
end

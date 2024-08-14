# frozen_string_literal: true

class MoveDescriptionToOverview < ActiveRecord::Migration[7.1]
  class Product < ActiveRecord::Base
    self.ignored_columns += ["description"]
    self.table = :products
  end

  def up
    Product.find_each do |product|
      product.update!(overview: product.description)
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

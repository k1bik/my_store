# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Category.create(name: 'Electronics')
Category.create(name: 'Books')

Supplier.create(name: 'Supplier 1')
Supplier.create(name: 'Supplier 2')

Product.create(name: 'Product 1', description: 'Description 1', price: 100.0, quantity_in_stock: 20, category_id: 1, supplier_id: 1)
Product.create(name: 'Product 2', description: nil, price: '200.0abc', quantity_in_stock: 20, category_id: 2, supplier_id: 2)
Product.create(name: 'Product 3', description: 'Description 3', price: nil, quantity_in_stock: 30, category_id: nil, supplier_id: 1)

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(name: 'Product 1', description: 'Description 1', price: 100.0)
Product.create(name: 'Product 2', description: nil, price: '200.0abc')
Product.create(name: 'Product 3', description: 'Description 3', price: 300.0)
Product.create(name: nil, description: 'Description 4', price: 400.0)
Product.create(name: 'Product 5', description: 'Description 5', price: nil)
Product.create(name: 'Product 6', description: 'Description 6', price: 600.0)

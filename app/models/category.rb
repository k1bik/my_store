class Category < ApplicationRecord
  has_one :product, dependent: :destroy
end

class Supplier < ApplicationRecord
  has_one :product, dependent: :destroy
end

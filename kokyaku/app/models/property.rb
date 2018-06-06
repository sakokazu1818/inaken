class Property < ApplicationRecord
  has_many :customer_properties
  has_many :customers, through: :customer_properties
end

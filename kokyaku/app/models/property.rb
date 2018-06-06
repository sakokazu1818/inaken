class Property < ApplicationRecord
  has_many :customer_properties, foreign_key: 'property_id'
  has_many :customers, through: :customer_properties
end

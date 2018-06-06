class Customer < ActiveRecord::Base
  has_many :customer_properties
  has_many :properties, through: :customer_properties
  accepts_nested_attributes_for :customer_properties, allow_destroy: true
end

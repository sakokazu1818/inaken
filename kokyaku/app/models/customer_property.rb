class CustomerProperty < ApplicationRecord
  belongs_to :customers
  belongs_to :properties
end

class CustomerProperty < ApplicationRecord
  belongs_to :customer
  belongs_to :property
end

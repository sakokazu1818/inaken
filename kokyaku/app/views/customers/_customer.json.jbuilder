json.extract! customer, :id, :sex, :date_of_birth, :tel, :created_at, :updated_at
json.url customer_url(customer, format: :json)

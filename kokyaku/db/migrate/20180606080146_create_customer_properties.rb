class CreateCustomerProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_properties do |t|
      t.references :customer, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end

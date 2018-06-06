class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :sex
      t.date :date_of_birth
      t.string :tel

      t.timestamps null: false
    end
  end
end

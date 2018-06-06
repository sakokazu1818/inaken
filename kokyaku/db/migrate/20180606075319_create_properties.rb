class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :agent
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end

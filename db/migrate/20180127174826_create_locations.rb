class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :zipcode

      t.timestamps
    end
  end
end

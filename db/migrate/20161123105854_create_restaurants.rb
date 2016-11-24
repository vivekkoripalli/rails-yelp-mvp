class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.string :address
      t.integer :phone_number
      t.text :description
      t.integer :stars

      t.timestamps
    end
  end
end
class Reservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.string :name
      t.string :email
      t.integer :phone_number
      t.integer :seats
      t.string :time
      t.boolean :space
      t.timestamps
    end
  end
end

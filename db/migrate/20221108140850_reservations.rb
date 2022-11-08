class Reservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.integer :seats
      t.integer :time
      t.boolean :space
      t.timestamps
    end
  end
end

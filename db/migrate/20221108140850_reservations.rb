class Reservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.integer :seat
      t.integer :times
      t.boolean :true
      t.timestamps
    end
  end
end

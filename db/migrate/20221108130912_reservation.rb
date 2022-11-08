class Reservation < ActiveRecord::Migration[6.1]
  def change
    create_table :reservation do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.integer :seat
      t.integer :time
      t.boolean :true

      t.timestamps

    end
  end
end

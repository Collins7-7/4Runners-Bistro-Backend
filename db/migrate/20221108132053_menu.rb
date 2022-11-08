class Menu < ActiveRecord::Migration[6.1]
  def change
    create_table :menu do |t|
      t.string :food
      t.integer :price
      t.string :image
      t.integer :restaurant_id
      t.boolean :true
      
    end
  end
end

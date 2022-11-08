class Menus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :food
      t.integer :price
      t.string :image
      t.boolean :true
      t.integer :restaurant_id
    end
  end
end

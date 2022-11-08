class Restaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :openig_time
      t.integer :closing_time
    end
  end
end

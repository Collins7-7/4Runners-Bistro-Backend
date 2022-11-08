class Restaurant < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant do |t|
      t.string :name
      t.string :opening_time
      t.string :closing_time
      t.string :image

    end
  end
end

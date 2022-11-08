class Customer < ActiveRecord::Migration[6.1]
  def change
    create_table :customer do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_email
      t.timestamps
    end
  end
end

class NewColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :menus, :image_two, :string 
  end
end

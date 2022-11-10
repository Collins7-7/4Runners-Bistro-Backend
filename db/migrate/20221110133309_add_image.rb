class AddImage < ActiveRecord::Migration[6.1]
  def change
    add_column :menus, :image_one, :string
  end
end

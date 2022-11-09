class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :customers, :first_name, :user_name
  end
end

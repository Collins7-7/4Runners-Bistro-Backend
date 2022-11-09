class RemoveColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :last_name
  end
end

class RemoveColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :nodes, :expandable_type
    remove_column :nodes, :expandable_id
  end
end

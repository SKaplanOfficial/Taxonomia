class AddColumnExpandableIdToNode < ActiveRecord::Migration[6.1]
  def change
    add_column :nodes, :expandable_id, :integer
  end
end

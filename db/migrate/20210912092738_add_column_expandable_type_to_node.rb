class AddColumnExpandableTypeToNode < ActiveRecord::Migration[6.1]
  def change
    add_column :nodes, :expandable_type, :integer
  end
end

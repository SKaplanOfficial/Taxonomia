class DropNodes < ActiveRecord::Migration[6.1]
  def change
    drop_table :nodes
  end
end

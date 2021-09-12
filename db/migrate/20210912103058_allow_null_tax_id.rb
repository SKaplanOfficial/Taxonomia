class AllowNullTaxId < ActiveRecord::Migration[6.1]
  def change
    change_column_null :nodes, :taxonomy_id, true
  end
end

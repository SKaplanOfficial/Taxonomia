class DropTables5 < ActiveRecord::Migration[6.1]
  def change
    drop_table :nodes
    drop_table :taxonomies
    
    create_table :taxonomies do |t|
      t.string :title
      t.text :description
      t.string :author

      t.timestamps
    end

    create_table :nodes do |t|
      t.string :title
      t.text :body
      t.date :startDate
      t.date :endDate
      t.string :kingdom
      t.string :phylum
      t.text :clades
      t.string :expandable_type
      t.integer :expandable_id
      t.references :taxonomy, null: false, foreign_key: true
      t.references :node, null: true, foreign_key: true

      t.timestamps
    end

    change_column_null :nodes, :taxonomy_id, true
  end
end
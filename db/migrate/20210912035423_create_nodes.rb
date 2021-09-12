class CreateNodes < ActiveRecord::Migration[6.1]
  def change
    create_table :nodes do |t|
      t.string :title
      t.text :body
      t.date :startDate
      t.date :endDate
      t.string :kingdom
      t.string :phylum
      t.text :clades
      t.references :taxonomy, null: false, foreign_key: true
      t.references :node, null: false, foreign_key: true

      t.timestamps
    end
  end
end

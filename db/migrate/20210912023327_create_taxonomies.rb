class CreateTaxonomies < ActiveRecord::Migration[6.1]
  def change
    create_table :taxonomies do |t|
      t.string :title

      t.timestamps
    end
  end
end

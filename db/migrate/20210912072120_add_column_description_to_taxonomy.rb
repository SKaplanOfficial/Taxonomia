class AddColumnDescriptionToTaxonomy < ActiveRecord::Migration[6.1]
  def change
    add_column :taxonomies, :description, :text
    add_column :taxonomies, :author, :string
  end
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_12_104201) do

  create_table "nodes", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.date "startDate"
    t.date "endDate"
    t.string "kingdom"
    t.string "phylum"
    t.text "clades"
    t.string "expandable_type"
    t.integer "expandable_id"
    t.integer "taxonomy_id"
    t.integer "node_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["node_id"], name: "index_nodes_on_node_id"
    t.index ["taxonomy_id"], name: "index_nodes_on_taxonomy_id"
  end

  create_table "ownerships", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taxonomies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "nodes", "nodes"
  add_foreign_key "nodes", "taxonomies"
end

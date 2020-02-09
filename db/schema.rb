# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_09_015953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.integer "sekisui_div", limit: 2, default: 0, null: false
    t.string "sekisui_num", limit: 7, default: "", null: false
    t.integer "type_div", limit: 2, default: 0, null: false
    t.string "zip_cd", limit: 7, default: "", null: false
    t.float "lat", default: 35.7012, null: false
    t.float "lon", default: 140.0906, null: false
    t.integer "floor", limit: 2, default: 0, null: false
    t.text "memo", default: "", null: false
    t.bigint "ooya_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ooya_id"], name: "index_buildings_on_ooya_id"
  end

  create_table "ooyas", force: :cascade do |t|
    t.string "surname", limit: 20, null: false
    t.string "name", limit: 20, null: false
    t.string "surname_kana", limit: 40, null: false
    t.string "name_kana", limit: 40, null: false
    t.string "zip_cd", limit: 2, default: "", null: false
    t.string "address1", limit: 120, default: "", null: false
    t.string "address2", limit: 100, default: "", null: false
    t.string "tel", limit: 20, default: "", null: false
    t.string "mobile", limit: 20, default: "", null: false
    t.text "memo", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "buildings", "ooyas"
end

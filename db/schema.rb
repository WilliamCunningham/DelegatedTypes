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

ActiveRecord::Schema[7.0].define(version: 2023_09_05_202125) do
  create_table "activities", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "data_name"
    t.string "action_type", default: "BooleanEntry"
    t.string "status", default: "active"
    t.boolean "includes_duration", default: false
    t.boolean "includes_content", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "boolean_entries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datum_entries", force: :cascade do |t|
    t.integer "datum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer "activity_id", null: false
    t.string "entryable_type"
    t.integer "entryable_id"
    t.datetime "performed_at"
    t.integer "duration"
    t.bigint "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_entries_on_activity_id"
    t.index ["entryable_type", "entryable_id"], name: "index_entries_on_entryable"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activities", "users"
  add_foreign_key "entries", "activities"
end

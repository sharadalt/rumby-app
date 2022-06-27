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

ActiveRecord::Schema.define(version: 2022_06_26_214830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schools", force: :cascade do |t|
    t.string "school_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools_teachers", id: false, force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "school_id", null: false
  end

  create_table "skool_years", force: :cascade do |t|
    t.string "year"
    t.bigint "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_skool_years_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacher_name"
    t.string "school_name"
    t.string "school_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "teacher_id"
  end

  add_foreign_key "skool_years", "teachers"
end

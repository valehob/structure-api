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

ActiveRecord::Schema[7.1].define(version: 2024_07_15_154431) do
  create_table "drills", force: :cascade do |t|
    t.string "name"
    t.text "diagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runs", force: :cascade do |t|
    t.integer "drill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drill_id"], name: "index_runs_on_drill_id"
  end

  create_table "shots", force: :cascade do |t|
    t.integer "drill_id", null: false
    t.text "diagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drill_id"], name: "index_shots_on_drill_id"
  end

  create_table "tries", force: :cascade do |t|
    t.integer "shot_id", null: false
    t.boolean "success"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shot_id"], name: "index_tries_on_shot_id"
  end

  add_foreign_key "runs", "drills"
  add_foreign_key "shots", "drills"
  add_foreign_key "tries", "shots"
end

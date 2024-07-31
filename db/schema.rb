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

ActiveRecord::Schema[7.1].define(version: 2024_07_31_093505) do
  create_table "drills", force: :cascade do |t|
    t.string "name"
    t.text "diagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "level_id", null: false
    t.integer "topic_id", null: false
    t.index ["level_id"], name: "index_drills_on_level_id"
    t.index ["topic_id"], name: "index_drills_on_topic_id"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "order"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runs", force: :cascade do |t|
    t.integer "drill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "makes"
    t.index ["drill_id"], name: "index_runs_on_drill_id"
  end

  create_table "shots", force: :cascade do |t|
    t.integer "drill_id", null: false
    t.text "diagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["drill_id"], name: "index_shots_on_drill_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tries", force: :cascade do |t|
    t.integer "shot_id", null: false
    t.boolean "success"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "run_id", null: false
    t.index ["run_id"], name: "index_tries_on_run_id"
    t.index ["shot_id"], name: "index_tries_on_shot_id"
  end

  add_foreign_key "drills", "levels"
  add_foreign_key "drills", "topics"
  add_foreign_key "runs", "drills"
  add_foreign_key "shots", "drills"
  add_foreign_key "tries", "runs"
  add_foreign_key "tries", "shots"
end

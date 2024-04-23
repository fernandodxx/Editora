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

ActiveRecord::Schema[7.1].define(version: 2024_04_23_154246) do
  create_table "applied_instruments", force: :cascade do |t|
    t.integer "answer_1"
    t.integer "answer_2"
    t.integer "answer_3"
    t.integer "answer_4"
    t.integer "answer_5"
    t.boolean "finished", default: false, null: false
    t.integer "evaluated_id", null: false
    t.integer "instrument_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluated_id"], name: "index_applied_instruments_on_evaluated_id"
    t.index ["instrument_id"], name: "index_applied_instruments_on_instrument_id"
  end

  create_table "evaluateds", force: :cascade do |t|
    t.string "name", null: false
    t.string "cpf", null: false
    t.string "email", null: false
    t.date "birthdate", null: false
    t.integer "psychologist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["psychologist_id"], name: "index_evaluateds_on_psychologist_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name", null: false
    t.text "question_1"
    t.text "question_2"
    t.text "question_3"
    t.text "question_4"
    t.text "question_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "psychologists", force: :cascade do |t|
    t.string "user_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_name"], name: "index_psychologists_on_user_name", unique: true
  end

  add_foreign_key "applied_instruments", "evaluateds"
  add_foreign_key "applied_instruments", "instruments"
  add_foreign_key "evaluateds", "psychologists"
end

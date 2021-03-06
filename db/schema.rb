# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_16_230406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archives", force: :cascade do |t|
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_archives_on_question_id"
  end

  create_table "attendees", force: :cascade do |t|
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilitators", force: :cascade do |t|
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "query"
    t.bigint "attendee_id"
    t.bigint "workshop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attendee_id"], name: "index_questions_on_attendee_id"
    t.index ["workshop_id"], name: "index_questions_on_workshop_id"
  end

  create_table "workshops", force: :cascade do |t|
    t.string "name"
    t.bigint "facilitator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facilitator_id"], name: "index_workshops_on_facilitator_id"
  end

  add_foreign_key "archives", "questions"
  add_foreign_key "questions", "attendees"
  add_foreign_key "questions", "workshops"
  add_foreign_key "workshops", "facilitators"
end

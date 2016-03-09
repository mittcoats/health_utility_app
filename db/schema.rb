# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160229201643) do

  create_table "answers", force: :cascade do |t|
    t.integer  "option_id"
    t.integer  "patient_id_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "answers", ["option_id"], name: "index_answers_on_option_id"
  add_index "answers", ["patient_id_id"], name: "index_answers_on_patient_id_id"

  create_table "options", force: :cascade do |t|
    t.text     "content"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "options", ["question_id"], name: "index_options_on_question_id"

  create_table "questions", force: :cascade do |t|
    t.text     "content"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["section_id"], name: "index_questions_on_section_id"

  create_table "sections", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "instructions"
    t.integer  "survey_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "sections", ["survey_id"], name: "index_sections_on_survey_id"

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "instructions"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end

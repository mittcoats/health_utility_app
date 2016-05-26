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

ActiveRecord::Schema.define(version: 20160519192332) do

  create_table "answers", force: :cascade do |t|
    t.integer  "option_id"
    t.integer  "survey_instance_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "answers", ["option_id"], name: "index_answers_on_option_id"
  add_index "answers", ["survey_instance_id"], name: "index_answers_on_survey_instance_id"

  create_table "gamble_results", force: :cascade do |t|
    t.integer  "final_good_outcome_percent"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "gamble_id"
    t.string   "survey_instance_id"
  end

  create_table "gambles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "instructions"
    t.integer  "interval"
    t.text     "good_outcome"
    t.text     "bad_outcome"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "section_id"
  end

  add_index "gambles", ["section_id"], name: "index_gambles_on_section_id"

  create_table "options", force: :cascade do |t|
    t.text     "content"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "options", ["question_id"], name: "index_options_on_question_id"

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "survey_instances", force: :cascade do |t|
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "survey_id"
  end

  add_index "survey_instances", ["patient_id"], name: "index_survey_instances_on_patient_id"
  add_index "survey_instances", ["survey_id"], name: "index_survey_instances_on_survey_id"

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "instructions"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

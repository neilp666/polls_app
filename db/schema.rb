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

ActiveRecord::Schema.define(version: 20141226104148) do

  create_table "polls", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "possible_answers", force: true do |t|
    t.integer  "question_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "possible_answers", ["question_id"], name: "index_possible_answers_on_question_id"

  create_table "questions", force: true do |t|
    t.string   "title"
    t.string   "kind"
    t.integer  "poll_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["poll_id"], name: "index_questions_on_poll_id"

end

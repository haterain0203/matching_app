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

ActiveRecord::Schema.define(version: 2020_03_06_062639) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.string "person_in_charge"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "topics", force: :cascade do |t|
    t.integer "company_id"
    t.string "topic_name"
    t.text "topic_content"
    t.string "topic_genre"
    t.text "topic_request"
    t.string "topic_cost"
    t.string "topic_request_youtuber"
    t.string "topic_negotiation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "youtubers", force: :cascade do |t|
    t.string "name"
    t.string "channel_name"
    t.integer "registrants"
    t.string "email"
    t.string "genre"
    t.string "accept"
    t.string "career"
    t.string "request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end

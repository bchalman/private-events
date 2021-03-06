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

ActiveRecord::Schema.define(version: 2019_01_13_004511) do

  create_table "event_attendings", force: :cascade do |t|
    t.integer "attendee_id"
    t.integer "attended_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attended_event_id"], name: "index_event_attendings_on_attended_event_id"
    t.index ["attendee_id"], name: "index_event_attendings_on_attendee_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.date "date"
    t.time "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "organizer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

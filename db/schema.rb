# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_22_123419) do

  create_table "day_types", force: :cascade do |t|
    t.string "name"
    t.string "image_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_attendees", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_attendees_on_event_id"
    t.index ["user_id"], name: "index_event_attendees_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "date"
    t.integer "sport_id", null: false
    t.integer "day_type_id", null: false
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["day_type_id"], name: "index_events_on_day_type_id"
    t.index ["location_id"], name: "index_events_on_location_id"
    t.index ["sport_id"], name: "index_events_on_sport_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "map_location"
    t.integer "sport_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sport_id"], name: "index_locations_on_sport_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price_per_person"
    t.string "main_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "image"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "event_attendees", "events"
  add_foreign_key "event_attendees", "users"
  add_foreign_key "events", "day_types"
  add_foreign_key "events", "locations"
  add_foreign_key "events", "sports"
  add_foreign_key "locations", "sports"
end

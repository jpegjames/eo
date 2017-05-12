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

ActiveRecord::Schema.define(version: 20161129084320) do

  create_table "routes", force: :cascade do |t|
    t.string   "short_name"
    t.string   "long_name"
    t.string   "description"
    t.string   "color",       limit: 6
    t.string   "text_color",  limit: 6
    t.integer  "route_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "stop_times", force: :cascade do |t|
    t.integer  "trip_id"
    t.string   "stop_id"
    t.datetime "arrival_time"
    t.datetime "departure_time"
    t.integer  "stop_sequence"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "stop_times", ["stop_id"], name: "index_stop_times_on_stop_id"
  add_index "stop_times", ["trip_id"], name: "index_stop_times_on_trip_id"

  create_table "stops", force: :cascade do |t|
    t.decimal  "lat",         precision: 18, scale: 12
    t.decimal  "long",        precision: 18, scale: 12
    t.string   "stop_id"
    t.string   "stop_code"
    t.string   "name"
    t.string   "description"
    t.boolean  "wheelchair"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "stops", ["stop_code"], name: "index_stops_on_stop_code"
  add_index "stops", ["stop_id"], name: "index_stops_on_stop_id"

  create_table "trips", force: :cascade do |t|
    t.integer  "route_id"
    t.string   "block_id"
    t.boolean  "bikes_allowed"
    t.boolean  "wheelchair"
    t.integer  "direction_id"
    t.text     "headsign"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "trips", ["route_id"], name: "index_trips_on_route_id"

end

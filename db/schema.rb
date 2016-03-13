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

ActiveRecord::Schema.define(version: 20160313063505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.integer  "hiker_id"
    t.integer  "hike_id"
    t.string   "group_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "groups", ["hike_id"], name: "index_groups_on_hike_id", using: :btree
  add_index "groups", ["hiker_id"], name: "index_groups_on_hiker_id", using: :btree

  create_table "hikers", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hikers", ["email"], name: "index_hikers_on_email", using: :btree
  add_index "hikers", ["reset_password_token"], name: "index_hikers_on_reset_password_token", unique: true, using: :btree
  add_index "hikers", ["uid", "provider"], name: "index_hikers_on_uid_and_provider", unique: true, using: :btree

  create_table "hikes", force: :cascade do |t|
    t.string   "hike_name"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.text     "meet_instructions"
    t.string   "start_point"
    t.string   "end_point"
    t.float    "hike_distance"
    t.time     "hike_time"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "hikes_trails", force: :cascade do |t|
    t.integer "hike_id"
    t.integer "trail_id"
  end

  add_index "hikes_trails", ["hike_id"], name: "index_hikes_trails_on_hike_id", using: :btree
  add_index "hikes_trails", ["trail_id"], name: "index_hikes_trails_on_trail_id", using: :btree

  create_table "trails", force: :cascade do |t|
    t.string   "trail_name"
    t.string   "region"
    t.text     "descriptions"
    t.string   "point_1"
    t.text     "start_1"
    t.string   "point_2"
    t.text     "start_2"
    t.float    "max_height"
    t.float    "difficulty"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end

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

ActiveRecord::Schema.define(version: 20170319093141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "moji_vehicles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "moji_vehicle_id", null: false
    t.integer  "fuel_efficiency"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "position_times", force: :cascade do |t|
    t.decimal  "latitude",   null: false
    t.decimal  "longitude",  null: false
    t.decimal  "trip_id"
    t.datetime "time"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_matches", force: :cascade do |t|
    t.integer  "user_one_id"
    t.integer  "user_two_id"
    t.boolean  "user_one_confirmed"
    t.boolean  "user_two_confirmed"
    t.integer  "user_one_trip_id"
    t.integer  "user_two_trip_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "moji_vehicle_id"
    t.float    "distance"
    t.float    "fuel_efficiency"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "gas_used"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "api_key",                             null: false
    t.index ["api_key"], name: "index_users_on_api_key", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end

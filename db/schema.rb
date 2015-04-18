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

ActiveRecord::Schema.define(version: 20150418161759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "uin"
  end

  add_index "cars", ["uin"], name: "index_cars_on_uin", unique: true, using: :btree
  add_index "cars", ["user_id"], name: "index_cars_on_user_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "message"
  end

  add_index "events", ["car_id"], name: "index_events_on_car_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "insurances", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "uin"
    t.integer  "user_id"
    t.integer  "car_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_cars", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_cars", ["car_id"], name: "index_user_cars_on_car_id", using: :btree
  add_index "user_cars", ["user_id"], name: "index_user_cars_on_user_id", using: :btree

  create_table "user_insurances", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "insurance_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "user_insurances", ["insurance_id"], name: "index_user_insurances_on_insurance_id", using: :btree
  add_index "user_insurances", ["user_id"], name: "index_user_insurances_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "cars", "users"
  add_foreign_key "events", "cars"
  add_foreign_key "events", "users"
  add_foreign_key "user_cars", "cars"
  add_foreign_key "user_cars", "users"
  add_foreign_key "user_insurances", "insurances"
  add_foreign_key "user_insurances", "users"
end

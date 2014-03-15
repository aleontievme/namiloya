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

ActiveRecord::Schema.define(version: 20140315070043) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "activeadmin_settings_pictures", force: true do |t|
    t.string   "data"
    t.string   "data_file_size"
    t.string   "data_content_type"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activeadmin_settings_settings", force: true do |t|
    t.string   "name"
    t.string   "string"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "orders", force: true do |t|
    t.integer "schedule_id"
    t.integer "quantity"
    t.text    "comment"
    t.string  "phone"
    t.string  "email"
    t.string  "permalink"
  end

  add_index "orders", ["schedule_id"], name: "index_orders_on_schedule_id"

  create_table "photos", force: true do |t|
    t.string "url"
    t.string "name"
    t.text   "description"
  end

  create_table "schedules", force: true do |t|
    t.integer "trip_id"
    t.date    "begin_date"
    t.date    "end_date"
    t.time    "begin_time"
    t.time    "end_time"
  end

  add_index "schedules", ["trip_id"], name: "index_schedules_on_trip_id"

  create_table "settings", force: true do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true

  create_table "trip_photos", force: true do |t|
    t.integer "trip_id"
    t.integer "photo_id"
  end

  add_index "trip_photos", ["photo_id"], name: "index_trip_photos_on_photo_id"
  add_index "trip_photos", ["trip_id"], name: "index_trip_photos_on_trip_id"

  create_table "trips", force: true do |t|
    t.string  "name"
    t.text    "description"
    t.integer "category_id"
    t.string  "permalink"
    t.text    "introduction"
    t.decimal "cost"
  end

  add_index "trips", ["category_id"], name: "index_trips_on_category_id"

end

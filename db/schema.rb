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

ActiveRecord::Schema.define(version: 20160623153109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipment_categories", force: :cascade do |t|
    t.string   "category",    null: false
    t.string   "cat_img",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "descriptors"
  end

  create_table "equipment_rentals", force: :cascade do |t|
    t.integer  "equipment_category_id",                                            null: false
    t.string   "equipment_name",                                                   null: false
    t.string   "make",                                                             null: false
    t.string   "model",                                                            null: false
    t.text     "equipment_description",                                            null: false
    t.string   "li_one",                                                           null: false
    t.string   "li_two"
    t.string   "li_three"
    t.string   "category_index_img",                                               null: false
    t.string   "equipment_img_one",                                                null: false
    t.string   "equipment_img_two",     default: "---\n:from: false\n:to: true\n", null: false
    t.string   "equipment_img_three",   default: "---\n:from: false\n:to: true\n", null: false
    t.string   "hourly_rate"
    t.string   "daily_rate",                                                       null: false
    t.string   "weekly_rate",                                                      null: false
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.string   "equipment_img_four"
    t.string   "equipment_img_five"
    t.string   "equipment_img_six"
  end

  add_index "equipment_rentals", ["equipment_name"], name: "index_equipment_rentals_on_equipment_name", using: :btree

  create_table "subscribers", force: :cascade do |t|
    t.text "email", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end

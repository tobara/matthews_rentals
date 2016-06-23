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

ActiveRecord::Schema.define(version: 20160623144946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "firstname",  null: false
    t.string   "lastname",   null: false
    t.string   "address1",   null: false
    t.string   "address2"
    t.string   "city",       null: false
    t.string   "state_id",   null: false
    t.integer  "country_id", null: false
    t.string   "zip",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "inventory_cnt",         default: 0,                                null: false
  end

  add_index "equipment_rentals", ["equipment_name"], name: "index_equipment_rentals_on_equipment_name", using: :btree

  create_table "line_items", force: :cascade do |t|
    t.integer "order_id",   null: false
    t.integer "quantity",   null: false
    t.integer "variant_id"
    t.decimal "total"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "billing_address_id",                null: false
    t.integer  "shipping_address_id",               null: false
    t.integer  "user_id"
    t.string   "email",                             null: false
    t.string   "phone",                             null: false
    t.decimal  "total",                             null: false
    t.decimal  "total_due",                         null: false
    t.string   "status",                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "tax_charge",          default: 0.0, null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.date     "date"
    t.integer  "user_id"
    t.integer  "equipment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", force: :cascade do |t|
    t.text "email", null: false
  end

  create_table "variants", force: :cascade do |t|
    t.string  "sku",                                 null: false
    t.string  "description",                         null: false
    t.decimal "price",                               null: false
    t.integer "quantity",            default: 0,     null: false
    t.integer "item_id",                             null: false
    t.string  "item_type",                           null: false
    t.boolean "active",              default: false, null: false
    t.boolean "unlimited_inventory", default: false, null: false
  end

end

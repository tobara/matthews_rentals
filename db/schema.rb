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

ActiveRecord::Schema.define(version: 20160622164035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adjustments", force: :cascade do |t|
    t.string   "source_type"
    t.integer  "source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "note"
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
  end

  add_index "equipment_rentals", ["equipment_name"], name: "index_equipment_rentals_on_equipment_name", using: :btree

  create_table "piggybak_addresses", force: :cascade do |t|
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

  create_table "piggybak_countries", force: :cascade do |t|
    t.string  "name"
    t.string  "abbr"
    t.boolean "active_shipping", default: false
    t.boolean "active_billing",  default: false
  end

  create_table "piggybak_line_items", force: :cascade do |t|
    t.integer  "order_id",                                                     null: false
    t.integer  "quantity",                                                     null: false
    t.integer  "sellable_id"
    t.decimal  "price",          precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "unit_price",     precision: 10, scale: 2, default: 0.0,        null: false
    t.string   "description",                             default: "",         null: false
    t.string   "line_item_type",                          default: "sellable", null: false
  end

  create_table "piggybak_order_notes", force: :cascade do |t|
    t.integer  "order_id",   null: false
    t.integer  "user_id",    null: false
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piggybak_orders", force: :cascade do |t|
    t.integer  "billing_address_id",                                           null: false
    t.integer  "shipping_address_id",                                          null: false
    t.integer  "user_id"
    t.string   "email",                                                        null: false
    t.string   "phone",                                                        null: false
    t.decimal  "total",               precision: 10, scale: 2,                 null: false
    t.decimal  "total_due",           precision: 10, scale: 2,                 null: false
    t.string   "status",                                                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip_address"
    t.text     "user_agent"
    t.boolean  "to_be_cancelled",                              default: false
    t.boolean  "confirmation_sent",                            default: false
  end

  create_table "piggybak_payment_method_values", force: :cascade do |t|
    t.integer "payment_method_id"
    t.string  "key"
    t.string  "value"
  end

  create_table "piggybak_payment_methods", force: :cascade do |t|
    t.string   "description",                 null: false
    t.string   "klass",                       null: false
    t.boolean  "active",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piggybak_payments", force: :cascade do |t|
    t.integer  "payment_method_id"
    t.string   "status",            default: "paid", null: false
    t.integer  "month"
    t.integer  "year"
    t.string   "transaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "masked_number"
    t.integer  "line_item_id"
  end

  create_table "piggybak_sellables", force: :cascade do |t|
    t.string  "sku",                                                          null: false
    t.string  "description",                                                  null: false
    t.decimal "price",               precision: 10, scale: 2,                 null: false
    t.integer "quantity",                                     default: 0,     null: false
    t.integer "item_id",                                                      null: false
    t.string  "item_type",                                                    null: false
    t.boolean "active",                                       default: false, null: false
    t.boolean "unlimited_inventory",                          default: false, null: false
  end

  create_table "piggybak_shipments", force: :cascade do |t|
    t.integer  "shipping_method_id",                 null: false
    t.string   "status",             default: "new", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "line_item_id"
  end

  create_table "piggybak_shipping_method_values", force: :cascade do |t|
    t.integer "shipping_method_id"
    t.string  "key"
    t.string  "value"
  end

  create_table "piggybak_shipping_methods", force: :cascade do |t|
    t.string  "description",                 null: false
    t.string  "klass",                       null: false
    t.boolean "active",      default: false, null: false
  end

  create_table "piggybak_states", force: :cascade do |t|
    t.string  "name"
    t.string  "abbr"
    t.integer "country_id"
  end

  create_table "piggybak_tax_method_values", force: :cascade do |t|
    t.integer "tax_method_id"
    t.string  "key"
    t.string  "value"
  end

  create_table "piggybak_tax_methods", force: :cascade do |t|
    t.string  "description",                 null: false
    t.string  "klass",                       null: false
    t.boolean "active",      default: false, null: false
  end

  create_table "subscribers", force: :cascade do |t|
    t.text "email", null: false
  end

  create_table "users", force: :cascade do |t|
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

end

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

ActiveRecord::Schema.define(version: 20131027022236) do

  create_table "addresses", force: true do |t|
    t.string   "first_name",                        null: false
    t.string   "last_name",                         null: false
    t.string   "address",                           null: false
    t.string   "city",                              null: false
    t.string   "state",                             null: false
    t.string   "zip_code",                          null: false
    t.string   "phone_number"
    t.string   "alternative_phone"
    t.boolean  "default",           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name",         null: false
    t.string   "permalink",    null: false
    t.boolean  "active"
    t.datetime "available_on"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorizations", force: true do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "option_values", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.string   "name"
    t.integer  "option_value_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", force: true do |t|
    t.string "name"
  end

  create_table "products", force: true do |t|
    t.string   "name",                                                       null: false
    t.string   "permalink",                                                  null: false
    t.string   "sku",                                                        null: false
    t.decimal  "price",              precision: 8, scale: 2, default: 0.0,   null: false
    t.decimal  "cost",               precision: 8, scale: 2, default: 0.0,   null: false
    t.text     "description"
    t.boolean  "is_customizable",                            default: false
    t.string   "customization"
    t.boolean  "active",                                     default: false
    t.boolean  "featured",                                   default: false
    t.datetime "available_on"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "products", ["name"], name: "index_products_on_name"
  add_index "products", ["permalink"], name: "index_products_on_permalink"

  create_table "states", force: true do |t|
    t.string   "name",                   null: false
    t.string   "abbreviation", limit: 5, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

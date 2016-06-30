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

ActiveRecord::Schema.define(version: 20160627162325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: :cascade do |t|
    t.string   "name",                     null: false
    t.string   "photo_url",                null: false
    t.string   "ingredients", default: [], null: false, array: true
    t.string   "tags",        default: [],              array: true
    t.string   "category",    default: [], null: false, array: true
    t.integer  "price",                    null: false
    t.string   "portion",                  null: false
    t.integer  "quantity",                 null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "dishes", ["category"], name: "index_dishes_on_category", using: :btree
  add_index "dishes", ["ingredients"], name: "index_dishes_on_ingredients", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                     null: false
    t.integer  "zip_code",                 null: false
    t.string   "photo_url"
    t.string   "ethnicities", default: [], null: false, array: true
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "users", ["ethnicities"], name: "index_users_on_ethnicities", using: :btree

end

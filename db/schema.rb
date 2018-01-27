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

ActiveRecord::Schema.define(version: 20180127181014) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.bigint "calculation_id"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["calculation_id"], name: "index_batches_on_calculation_id"
    t.index ["route_id"], name: "index_batches_on_route_id"
  end

  create_table "calculations", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.integer "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantities", force: :cascade do |t|
    t.integer "amount"
    t.bigint "route_id"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_quantities_on_route_id"
    t.index ["unit_id"], name: "index_quantities_on_unit_id"
  end

  create_table "routes", force: :cascade do |t|
    t.integer "location_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.integer "clean_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "batches", "calculations"
  add_foreign_key "batches", "routes"
  add_foreign_key "quantities", "routes"
  add_foreign_key "quantities", "units"
end

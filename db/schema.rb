# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_09_095715) do

  create_table "customers", force: :cascade do |t|
    t.string "user_name"
    t.string "user_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "food"
    t.integer "price"
    t.string "image"
    t.boolean "true"
    t.integer "restaurant_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "restaurant_id"
    t.integer "seat"
    t.integer "times"
    t.boolean "true"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.integer "opening_time"
    t.integer "closing_time"
    t.string "image"
  end

end

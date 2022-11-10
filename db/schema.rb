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

ActiveRecord::Schema.define(version: 2022_11_10_133625) do

  create_table "customers", force: :cascade do |t|
    t.string "user_name"
    t.string "user_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password"
  end

  create_table "menus", force: :cascade do |t|
    t.string "food"
    t.integer "price"
    t.string "image"
    t.boolean "availability"
    t.integer "restaurant_id"
    t.string "image_one"
    t.string "image_two"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "restaurant_id"
    t.string "name"
    t.string "email"
    t.integer "phone_number"
    t.integer "seats"
    t.string "time"
    t.boolean "space"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "opening_time"
    t.string "closing_time"
    t.string "image"
  end

end

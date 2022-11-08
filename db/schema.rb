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

ActiveRecord::Schema.define(version: 2022_11_08_132526) do

  create_table "customer", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu", force: :cascade do |t|
    t.string "food"
    t.integer "price"
    t.string "image"
    t.integer "restaurant_id"
    t.boolean "true"
  end

  create_table "reservation", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "restaurant_id"
    t.integer "seat"
    t.integer "time"
    t.boolean "true"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurant", force: :cascade do |t|
    t.string "name"
    t.string "opening_time"
    t.string "closing_time"
    t.string "image"
  end

end

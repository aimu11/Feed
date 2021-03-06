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

ActiveRecord::Schema.define(version: 2018_08_27_100534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "phone_number"
    t.string "description"
    t.string "dietary_category"
    t.string "business_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "cart_details", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "food_id"
    t.bigint "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_details_on_cart_id"
    t.index ["food_id"], name: "index_cart_details_on_food_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "number_of_element"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_carts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "portion"
    t.string "dietary_category"
    t.string "food_type"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "order_before"
    t.datetime "pickup_start"
    t.datetime "pickup_end"
    t.string "sku"
    t.integer "price_cents", default: 0, null: false
    t.string "photo"
    t.index ["business_id"], name: "index_foods_on_business_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.string "food_sku"
    t.integer "price_cents", default: 0, null: false
    t.json "payment"
    t.bigint "cart_id"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["food_id"], name: "index_orders_on_food_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "businesses", "users"
  add_foreign_key "cart_details", "carts"
  add_foreign_key "cart_details", "foods"
  add_foreign_key "carts", "customers"
  add_foreign_key "customers", "users"
  add_foreign_key "foods", "businesses"
  add_foreign_key "orders", "carts"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "foods"
end

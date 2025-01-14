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

ActiveRecord::Schema.define(version: 2019_12_13_083807) do

  create_table "charges", force: :cascade do |t|
    t.integer "created"
    t.boolean "paid", default: false, null: false
    t.decimal "amount", precision: 10, scale: 2
    t.string "currency", default: "USD", null: false
    t.boolean "refunded", default: false, null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_charges_on_customer_id"
    t.index ["paid"], name: "index_charges_on_paid"
    t.index ["refunded"], name: "index_charges_on_refunded"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

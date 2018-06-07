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

ActiveRecord::Schema.define(version: 20180606075319) do

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "sex"
    t.date     "date_of_birth"
    t.string   "tel"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "properties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "agent"
    t.string   "name"
    t.text     "address",     limit: 65535
    t.integer  "customer_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["customer_id"], name: "index_properties_on_customer_id", using: :btree
  end

  add_foreign_key "properties", "customers"
end

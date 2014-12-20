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

ActiveRecord::Schema.define(version: 20141220140203) do

  create_table "companies", force: true do |t|
    t.string   "company_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "web_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "components", force: true do |t|
    t.string   "component_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ingredient_id"
    t.integer  "foodproduct_id"
  end

  create_table "foodproducts", force: true do |t|
    t.string   "food_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "component_id"
    t.integer  "foodproduct_id"
  end

  create_table "ingredients", force: true do |t|
    t.string   "ingredient_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "nutrient_id"
  end

  create_table "nutrients", force: true do |t|
    t.decimal  "water"
    t.decimal  "energy_kcal"
    t.decimal  "protein"
    t.decimal  "lipid_total"
    t.decimal  "ash"
    t.decimal  "carbohydrate"
    t.decimal  "fiber"
    t.decimal  "sugar_total"
    t.decimal  "calcium"
    t.decimal  "iron"
    t.decimal  "magnesium"
    t.decimal  "phosphorous"
    t.decimal  "potassium"
    t.decimal  "sodium"
    t.decimal  "zinc"
    t.decimal  "copper"
    t.decimal  "manganese"
    t.decimal  "selenium"
    t.decimal  "vitamin_c"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references", force: true do |t|
    t.string   "author"
    t.datetime "publication_date"
    t.string   "title"
    t.string   "place"
    t.string   "publisher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

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

ActiveRecord::Schema.define(version: 20150504103133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "sex"
    t.integer  "weight"
    t.integer  "growth"
    t.integer  "hips"
    t.integer  "waist"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "loads", force: :cascade do |t|
    t.string   "title"
    t.integer  "calories"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals", force: :cascade do |t|
    t.integer  "weight"
    t.string   "ingestion"
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.integer  "calories"
    t.integer  "fats"
    t.integer  "carbohydrates"
    t.integer  "vitamin_a"
    t.integer  "vitamin_b1"
    t.integer  "vitamin_b2"
    t.integer  "vitamin_b3"
    t.integer  "vitamin_b4"
    t.integer  "vitamin_b5"
    t.integer  "vitamin_b6"
    t.integer  "vitamin_b7"
    t.integer  "vitamin_b9"
    t.integer  "vitamin_b10"
    t.integer  "vitamin_b11"
    t.integer  "vitamin_b12"
    t.integer  "vitamin_b13"
    t.integer  "vitamin_b15"
    t.integer  "vitamin_c"
    t.integer  "vitamin_d"
    t.integer  "vitamin_e"
    t.integer  "vitamin_k"
    t.integer  "vitamin_n"
    t.integer  "vitamin_p"
    t.integer  "vitamin_u"
    t.integer  "calcium"
    t.integer  "iron"
    t.integer  "potassium"
    t.integer  "copper"
    t.integer  "manganese"
    t.integer  "magnesium"
    t.integer  "sodium"
    t.integer  "sulfur"
    t.integer  "silicon"
    t.integer  "zinc"
    t.integer  "selenium"
    t.integer  "chrome"
    t.integer  "iodine"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

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

ActiveRecord::Schema.define(version: 20190929235016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrative_processes", force: :cascade do |t|
    t.integer  "benefit_type"
    t.string   "der"
    t.integer  "age"
    t.string   "contribution_time"
    t.text     "movements"
    t.boolean  "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "client_professions", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "profession_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["client_id"], name: "index_client_professions_on_client_id", using: :btree
    t.index ["profession_id"], name: "index_client_professions_on_profession_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "email"
    t.boolean  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "profession_id"
    t.integer  "cep"
    t.string   "uf"
    t.string   "city"
    t.string   "neighborhood"
    t.string   "address"
    t.integer  "number"
    t.string   "father"
    t.string   "mother"
    t.string   "marital_status"
    t.string   "naturalness"
    t.string   "uf_naturalness"
    t.integer  "cpf"
    t.string   "issuing_organ"
    t.string   "document_type"
    t.integer  "contact"
    t.integer  "scrap_contact"
    t.integer  "relationship1"
    t.integer  "relationship2"
    t.string   "observation"
  end

  create_table "labor_processes", force: :cascade do |t|
    t.integer  "process_category"
    t.integer  "process_number"
    t.date     "distribution_date"
    t.string   "stick"
    t.string   "court"
    t.text     "movements"
    t.boolean  "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string   "profession_description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.date     "delivery_date"
    t.integer  "linked_process"
    t.text     "task_description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "client_professions", "clients"
  add_foreign_key "client_professions", "professions"
end

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

ActiveRecord::Schema.define(version: 20181214063145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "post_code"
    t.string "addres"
    t.string "tel"
    t.string "fax"
    t.string "license"
    t.string "holiday"
    t.string "start"
    t.string "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "encrypted_password"
    t.index ["reset_password_token"], name: "index_agents_on_reset_password_token", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.bigint "agent_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.string "content"
    t.index ["agent_id"], name: "index_contacts_on_agent_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "office_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offices", force: :cascade do |t|
    t.text "image"
    t.float "area"
    t.string "addres"
    t.integer "count_people"
    t.string "use"
    t.float "shi_deposit"
    t.float "rei_deposit"
    t.float "rent_fee"
    t.string "office_name"
    t.integer "floor"
    t.string "construction"
    t.string "function"
    t.integer "years"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "agent_id"
    t.index ["agent_id"], name: "index_offices_on_agent_id"
    t.index ["user_id"], name: "index_offices_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "encrypted_password"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contacts", "agents"
  add_foreign_key "contacts", "users"
  add_foreign_key "offices", "agents"
  add_foreign_key "offices", "users"
end

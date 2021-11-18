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

ActiveRecord::Schema.define(version: 2021_11_18_004552) do

  create_table "behaviors", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_behaviors_on_user_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.integer "behavior_id", null: false
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["behavior_id"], name: "index_conditions_on_behavior_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "address"
    t.string "phone"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_insurances_on_user_id"
  end

  create_table "medications", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.integer "dose"
    t.date "first_dose"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_medications_on_user_id"
  end

  create_table "providers", force: :cascade do |t|
    t.integer "insurance_id", null: false
    t.string "name"
    t.string "address"
    t.string "phone"
    t.date "first_visit"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["insurance_id"], name: "index_providers_on_insurance_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "behaviors", "users"
  add_foreign_key "conditions", "behaviors"
  add_foreign_key "insurances", "users"
  add_foreign_key "medications", "users"
  add_foreign_key "providers", "insurances"
end

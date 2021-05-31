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

ActiveRecord::Schema.define(version: 2021_05_31_113833) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "estates", force: :cascade do |t|
    t.string "name"
    t.string "dicose"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "department_id", null: false
    t.index ["department_id"], name: "index_estates_on_department_id"
    t.index ["user_id"], name: "index_estates_on_user_id"
  end

  create_table "payrolls", force: :cascade do |t|
    t.string "rodeos_main_breed"
    t.integer "liter_sent"
    t.integer "liters_of_milk_not_sent"
    t.integer "cell_count"
    t.integer "bacterial_count"
    t.integer "grease"
    t.integer "protein"
    t.integer "urea"
    t.integer "cryoscopy"
    t.integer "vm_surface"
    t.integer "dairy_surface"
    t.integer "milking_cows"
    t.integer "dry_cows"
    t.string "cow_dough"
    t.integer "suckling_calves"
    t.integer "conc_protein"
    t.string "form_of_supply_protein"
    t.integer "conc_energy"
    t.string "form_of_supply_energy"
    t.integer "wet_grain"
    t.string "form_of_supply_grain"
    t.integer "henilages"
    t.string "form_of_supply_henilages"
    t.integer "silo"
    t.integer "form_of_supply"
    t.integer "grams_of_ration_liter"
    t.integer "mineral_salts"
    t.integer "grams_of_salt_liter"
    t.integer "no_grazing_days"
    t.integer "childbirth_racks"
    t.integer "calving_heifers"
    t.integer "discarded_cows"
    t.integer "cows_served"
    t.integer "pregnant_cows"
    t.integer "clinical_mastitis"
    t.integer "cows_on_detour"
    t.integer "abortions_seen"
    t.integer "reproductive_losses"
    t.integer "cows_with_foot_problems"
    t.integer "dead_cows"
    t.integer "rains"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "lactose"
    t.datetime "saved_date"
    t.integer "estate_id", null: false
    t.integer "user_id", null: false
    t.index ["estate_id"], name: "index_payrolls_on_estate_id"
    t.index ["user_id"], name: "index_payrolls_on_user_id"
  end

  create_table "rodeos_main_breeds", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "secondary_user_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_type_id", null: false
    t.index ["user_type_id"], name: "index_secondary_user_types_on_user_type_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "typename"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "business_name", default: "", null: false
    t.string "rut", default: "", null: false
    t.string "address", default: "", null: false
    t.string "identification_document", default: "", null: false
    t.string "phone_one", default: "", null: false
    t.string "phone_two", default: "", null: false
    t.string "location", default: "", null: false
    t.string "invoice_postal_code", default: "", null: false
    t.string "username"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "secondary_user_type_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["secondary_user_type_id"], name: "index_users_on_secondary_user_type_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "estates", "departments"
  add_foreign_key "estates", "users"
  add_foreign_key "payrolls", "estates"
  add_foreign_key "payrolls", "users"
  add_foreign_key "secondary_user_types", "user_types"
  add_foreign_key "users", "secondary_user_types"
end

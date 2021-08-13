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

ActiveRecord::Schema.define(version: 2021_08_13_154644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "user_id", null: false
    t.bigint "department_id", null: false
    t.bigint "productive_area_id", null: false
    t.index ["department_id"], name: "index_estates_on_department_id"
    t.index ["productive_area_id"], name: "index_estates_on_productive_area_id"
    t.index ["user_id"], name: "index_estates_on_user_id"
  end

  create_table "form_of_supplies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "has_estates", force: :cascade do |t|
    t.bigint "estate_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["estate_id"], name: "index_has_estates_on_estate_id"
    t.index ["user_id"], name: "index_has_estates_on_user_id"
  end

  create_table "payrolls", force: :cascade do |t|
    t.integer "liter_sent", null: false
    t.integer "liters_of_milk_not_sent", null: false
    t.integer "cell_count", null: false
    t.integer "bacterial_count", null: false
    t.integer "grease", null: false
    t.integer "protein", null: false
    t.integer "cryoscopy", null: false
    t.integer "vm_surface", null: false
    t.integer "dairy_surface", null: false
    t.integer "milking_cows", null: false
    t.integer "dry_cows", null: false
    t.integer "cow_dough", null: false
    t.integer "suckling_calves"
    t.float "conc_protein"
    t.integer "form_of_supply_protein"
    t.float "conc_energy"
    t.integer "form_of_supply_energy"
    t.float "wet_grain"
    t.integer "form_of_supply_grain"
    t.float "henilages"
    t.integer "form_of_supply_henilages"
    t.float "silo"
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
    t.integer "lactose", null: false
    t.datetime "saved_date"
    t.bigint "estate_id", null: false
    t.bigint "user_id", null: false
    t.bigint "rodeos_main_breed_id", null: false
    t.float "mun"
    t.float "balanced_ration"
    t.index ["estate_id"], name: "index_payrolls_on_estate_id"
    t.index ["rodeos_main_breed_id"], name: "index_payrolls_on_rodeos_main_breed_id"
    t.index ["user_id"], name: "index_payrolls_on_user_id"
  end

  create_table "productive_areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.bigint "user_type_id", null: false
    t.index ["user_type_id"], name: "index_secondary_user_types_on_user_type_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "typename"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "public"
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
    t.string "username", null: false
    t.bigint "user_type_id", null: false
    t.bigint "secondary_user_type_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["secondary_user_type_id"], name: "index_users_on_secondary_user_type_id"
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "estates", "departments"
  add_foreign_key "estates", "productive_areas"
  add_foreign_key "estates", "users"
  add_foreign_key "has_estates", "estates"
  add_foreign_key "has_estates", "users"
  add_foreign_key "payrolls", "estates"
  add_foreign_key "payrolls", "form_of_supplies", column: "form_of_supply_energy"
  add_foreign_key "payrolls", "form_of_supplies", column: "form_of_supply_grain"
  add_foreign_key "payrolls", "form_of_supplies", column: "form_of_supply_henilages"
  add_foreign_key "payrolls", "form_of_supplies", column: "form_of_supply_protein"
  add_foreign_key "payrolls", "rodeos_main_breeds"
  add_foreign_key "payrolls", "users"
  add_foreign_key "secondary_user_types", "user_types"
  add_foreign_key "users", "secondary_user_types"
  add_foreign_key "users", "user_types"
end

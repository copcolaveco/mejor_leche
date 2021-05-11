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

ActiveRecord::Schema.define(version: 2021_05_02_200334) do

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "months", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payrolls", force: :cascade do |t|
    t.integer "producer"
    t.string "location"
    t.integer "user_type"
    t.integer "technical"
    t.integer "year"
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
    t.integer "user_id"
    t.integer "month_id"
    t.string "lactose"
    t.index ["month_id"], name: "index_payrolls_on_month_id"
    t.index ["user_id"], name: "index_payrolls_on_user_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "typename"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "idtype"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "dicose", default: "", null: false
    t.string "business_name", default: "", null: false
    t.string "rut", default: "", null: false
    t.string "address", default: "", null: false
    t.string "identification_document", default: "", null: false
    t.string "phone_one", default: "", null: false
    t.string "phone_two", default: "", null: false
    t.string "location", default: "", null: false
    t.string "department", default: "", null: false
    t.string "invoice_postal_code", default: "", null: false
    t.string "username"
    t.integer "user_type"
    t.integer "user_type_id"
    t.integer "department_id"
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_type"], name: "index_users_on_user_type"
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end

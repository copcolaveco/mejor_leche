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

ActiveRecord::Schema.define(version: 2021_09_22_143137) do

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
    t.float "losses"
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
    t.float "liter_sent", default: 0.0, null: false
    t.float "liters_of_milk_not_sent", default: 0.0, null: false
    t.float "cell_count", default: 0.0, null: false
    t.float "bacterial_count", default: 0.0, null: false
    t.float "grease", default: 0.0, null: false
    t.float "protein", default: 0.0, null: false
    t.float "cryoscopy", default: 0.0, null: false
    t.float "vm_surface", default: 0.0, null: false
    t.float "dairy_surface", default: 0.0, null: false
    t.float "milking_cows", default: 0.0, null: false
    t.float "dry_cows", default: 0.0, null: false
    t.float "cow_dough", default: 0.0, null: false
    t.float "suckling_calves", default: 0.0
    t.float "conc_protein", default: 0.0
    t.integer "form_of_supply_protein", default: 0
    t.float "conc_energy", default: 0.0
    t.integer "form_of_supply_energy", default: 0
    t.float "wet_grain", default: 0.0
    t.integer "form_of_supply_grain", default: 0
    t.float "henilages", default: 0.0
    t.integer "form_of_supply_henilages", default: 0
    t.float "silo", default: 0.0
    t.float "form_of_supply", default: 0.0
    t.float "grams_of_ration_liter", default: 0.0
    t.float "mineral_salts", default: 0.0
    t.float "grams_of_salt_liter", default: 0.0
    t.float "no_grazing_days", default: 0.0
    t.float "childbirth_racks", default: 0.0
    t.float "calving_heifers", default: 0.0
    t.float "discarded_cows", default: 0.0
    t.float "cows_served", default: 0.0
    t.float "pregnant_cows", default: 0.0
    t.float "clinical_mastitis", default: 0.0
    t.float "cows_on_detour", default: 0.0
    t.float "abortions_seen", default: 0.0
    t.float "reproductive_losses", default: 0.0
    t.float "cows_with_foot_problems", default: 0.0
    t.float "dead_cows", default: 0.0
    t.float "rains", default: 0.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "lactose", default: 0.0, null: false
    t.date "saved_date", null: false
    t.bigint "estate_id", null: false
    t.bigint "user_id", null: false
    t.bigint "rodeos_main_breed_id", null: false
    t.integer "mun", default: 0
    t.float "balanced_ration", default: 0.0
    t.integer "form_of_supply_balanced_ration"
    t.float "bale", default: 0.0
    t.integer "form_of_supply_bale"
    t.float "proportion_NR_NP", default: 0.0
    t.float "liters_produced", default: 0.0
    t.float "liters_day_VO", default: 0.0
    t.float "concentrated_liters_kg", default: 0.0
    t.float "relationship_grase_protein", default: 0.0
    t.float "number_of_cow_mass", default: 0.0
    t.float "relationship_VO_VM", default: 0.0
    t.float "carga_VM_VMha", default: 0.0
    t.float "protein_produced_in_milk", default: 0.0
    t.float "nitrogen_use_efficiency", default: 0.0
    t.float "daily_excretion", default: 0.0
    t.float "monthly_excretion", default: 0.0
    t.float "urea_nitrogen_in_milk", default: 0.0
    t.float "daily_dry_bases_energy_conc"
    t.float "daily_dry_bases_protein_conc"
    t.float "daily_dry_bases_balanced_ration"
    t.float "daily_dry_bases_total", default: 0.0
    t.float "daily_dry_bases_wet_grain_silo"
    t.float "daily_dry_bases_henilaje"
    t.float "daily_dry_bases_silo"
    t.float "daily_dry_bases_bale"
    t.float "daily_dry_bases_total_without_pasture", default: 0.0
    t.float "daily_dry_bases_pasture_consumption", default: 0.0
    t.float "daily_proteins_energy_conc"
    t.float "daily_proteins_protein_conc"
    t.float "daily_proteins_balanced_ration"
    t.float "daily_proteins_total", default: 0.0
    t.float "daily_proteins_wet_grain_silo"
    t.float "daily_proteins_henilaje"
    t.float "daily_proteins_silo"
    t.float "daily_proteins_bale"
    t.float "daily_proteins_total_without_pasture", default: 0.0
    t.float "daily_proteins_pasture_consumption", default: 0.0
    t.float "recommended_value_rc", default: 250000.0
    t.float "recommended_value_LNR_LT", default: 5.0
    t.float "recommended_value_rb", default: 30000.0
    t.float "recommended_value_grase", default: 3.3
    t.float "recommended_value_protein_min", default: 3.0
    t.float "recommended_value_protein_max", default: 4.0
    t.float "recommended_value_lactose_min", default: 4.5
    t.float "recommended_value_lactose_max", default: 5.0
    t.float "recommended_value_MUN_min", default: 10.0
    t.float "recommended_value_MUN_max", default: 20.0
    t.float "recommended_value_cryoscopy_min", default: -0.51
    t.float "recommended_value_cryoscopy_max", default: -0.53
    t.float "recommended_value_mastitis", default: 5.0
    t.float "dry_base_concentrate", default: 0.0
    t.float "dry_base_reserve", default: 0.0
    t.float "dry_base_pasture", default: 0.0
    t.float "dry_base_total_MS", default: 0.0
    t.float "protein_consumed_concentrate", default: 0.0
    t.float "protein_consumed_reserve", default: 0.0
    t.float "protein_consumed_pasture", default: 0.0
    t.float "protein_consumed_total_MS", default: 0.0
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

  create_table "type_of_foods", force: :cascade do |t|
    t.string "name"
    t.float "ms"
    t.float "protein"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
  add_foreign_key "payrolls", "form_of_supplies", column: "form_of_supply_balanced_ration"
  add_foreign_key "payrolls", "form_of_supplies", column: "form_of_supply_bale"
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

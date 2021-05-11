class CreatePayrolls < ActiveRecord::Migration[6.1]
  def change
    create_table :payrolls do |t|
      t.integer :producer
      t.string :location
      t.integer :user_type
      t.integer :technical
      t.integer :year
      t.string :rodeos_main_breed
      t.string :string
      t.integer :liter_sent
      t.integer :liters_of_milk_not_sent
      t.integer :cell_count
      t.integer :bacterial_count
      t.integer :grease
      t.integer :protein
      t.integer :urea
      t.integer :cryoscopy
      t.integer :vm_surface
      t.integer :dairy_surface
      t.integer :milking_cows
      t.integer :dry_cows
      t.string :cow_dough
      t.integer :suckling_calves
      t.integer :conc_protein
      t.string :form_of_supply_protein
      t.integer :conc_energy
      t.string :form_of_supply_energy
      t.integer :wet_grain
      t.string :form_of_supply_grain
      t.integer :henilages
      t.string :form_of_supply_henilages
      t.integer :silo
      t.integer :form_of_supply
      t.integer :grams_of_ration_liter
      t.integer :mineral_salts
      t.integer :grams_of_salt_liter
      t.integer :no_grazing_days
      t.integer :childbirth_racks
      t.integer :calving_heifers
      t.integer :discarded_cows
      t.integer :cows_served
      t.integer :pregnant_cows
      t.integer :clinical_mastitis
      t.integer :cows_on_detour
      t.integer :abortions_seen
      t.integer :reproductive_losses
      t.integer :cows_with_foot_problems
      t.integer :dead_cows
      t.integer :rains

      t.timestamps
    end
  end
end

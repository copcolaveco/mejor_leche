class AddDefaoulToPayroll < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :liter_sent, :integer, null: false,  default: 0
    change_column :payrolls, :liters_of_milk_not_sent, :integer, null: false,  default: 0
    change_column :payrolls, :cell_count, :integer, null: false, default: 0
    change_column :payrolls, :bacterial_count, :integer, null: false, default: 0
    change_column :payrolls, :grease, :integer, null: false, default: 0
    change_column :payrolls, :protein, :integer, null: false,  default: 0
    change_column :payrolls, :lactose, :integer , null: false, default: 0
    change_column :payrolls, :mun, :integer, null: true, default: 0
    change_column :payrolls, :cryoscopy, :integer, null: false, default: 0
    change_column :payrolls, :vm_surface, :integer, null: false, default: 0
    change_column :payrolls, :dairy_surface, :integer, null: false, default: 0
    change_column :payrolls, :milking_cows, :integer, null: false, default: 0
    change_column :payrolls, :dry_cows, :integer, null: false, default: 0
    change_column :payrolls, :cow_dough, :integer, null: false, default: 0
    change_column :payrolls, :conc_protein, :float, null: true, default: 0.0
    change_column :payrolls, :suckling_calves, :integer, null: true, default: 0
    change_column :payrolls, :conc_energy, :float, null: true, default: 0.0
    change_column :payrolls, :form_of_supply_protein, :integer, null: true, default: 0
    change_column :payrolls, :form_of_supply_energy, :integer, null: true, default: 0
    change_column :payrolls, :wet_grain, :float, null: true, default: 0.0
    change_column :payrolls, :form_of_supply_grain, :integer, null: true, default: 0
    change_column :payrolls, :henilages, :float, null: true, default: 0
    change_column :payrolls, :form_of_supply_henilages, :integer, null: true, default: 0
    change_column :payrolls, :silo, :float, null: true,  default: 0.0
    change_column :payrolls, :form_of_supply, :integer, null: true, default: 0
    change_column :payrolls, :grams_of_ration_liter, :integer, null: true, default: 0
    change_column :payrolls, :mineral_salts, :integer, null: true, default: 0
    change_column :payrolls, :grams_of_salt_liter, :integer, null: true, default: 0
    change_column :payrolls, :no_grazing_days, :integer, null: true, default: 0
    change_column :payrolls, :childbirth_racks, :integer, null: true, default: 0
    change_column :payrolls, :calving_heifers, :integer, null: true, default: 0
    change_column :payrolls, :discarded_cows, :integer, null: true, default: 0
    change_column :payrolls, :cows_served, :integer, null: true, default: 0
    change_column :payrolls, :pregnant_cows, :integer, null: true, default: 0
    change_column :payrolls, :clinical_mastitis, :integer, null: true, default: 0
    change_column :payrolls, :cows_on_detour, :integer, null: true, default: 0
    change_column :payrolls, :abortions_seen, :integer, null: true, default: 0
    change_column :payrolls, :reproductive_losses, :integer, null: true, default: 0
    change_column :payrolls, :cows_with_foot_problems, :integer, null: true, default: 0.0
    change_column :payrolls, :dead_cows, :integer, null: true ,default: 0
    change_column :payrolls, :rains, :integer, null: true,default: 0
  end
end

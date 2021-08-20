class ChangeDateTypePayroll < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :liter_sent, :float, null: false,  default: 0.0
    change_column :payrolls, :liters_of_milk_not_sent, :float, null: false,  default: 0.0
    change_column :payrolls, :cell_count, :float, null: false, default: 0.0
    change_column :payrolls, :bacterial_count, :float, null: false, default: 0.0
    change_column :payrolls, :grease, :float, null: false, default: 0.0
    change_column :payrolls, :protein, :float, null: false,  default: 0.0
    change_column :payrolls, :lactose, :float , null: false, default: 0.0
    change_column :payrolls, :mun, :integer, null: true, default: 0
    change_column :payrolls, :cryoscopy, :float, null: false, default: 0.0
    change_column :payrolls, :vm_surface, :float, null: false, default: 0.0
    change_column :payrolls, :dairy_surface, :float, null: false, default: 0.0
    change_column :payrolls, :milking_cows, :float, null: false, default: 0.0
    change_column :payrolls, :dry_cows, :float, null: false, default: 0.0
    change_column :payrolls, :cow_dough, :float, null: false, default: 0.0
    change_column :payrolls, :conc_protein, :float, null: true, default: 0.0
    change_column :payrolls, :suckling_calves, :float, null: true, default: 0.0
    change_column :payrolls, :conc_energy, :float, null: true, default: 0.0
    change_column :payrolls, :form_of_supply_protein, :integer, null: true, default: 0
    change_column :payrolls, :form_of_supply_energy, :integer, null: true, default: 0
    change_column :payrolls, :wet_grain, :float, null: true, default: 0.0
    change_column :payrolls, :form_of_supply_grain, :integer, null: true, default: 0.0
    change_column :payrolls, :henilages, :float, null: true, default: 0.0
    change_column :payrolls, :form_of_supply_henilages, :integer, null: true, default: 0.0
    change_column :payrolls, :silo, :float, null: true,  default: 0.0
    change_column :payrolls, :form_of_supply, :float, null: true, default: 0.0
    change_column :payrolls, :grams_of_ration_liter, :float, null: true, default: 0.0
    change_column :payrolls, :mineral_salts, :float, null: true, default: 0.0
    change_column :payrolls, :grams_of_salt_liter, :float, null: true, default: 0.0
    change_column :payrolls, :no_grazing_days, :float, null: true, default: 0.0
    change_column :payrolls, :childbirth_racks, :float, null: true, default: 0.0
    change_column :payrolls, :calving_heifers, :float, null: true, default: 0.0
    change_column :payrolls, :discarded_cows, :float, null: true, default: 0.0
    change_column :payrolls, :cows_served, :float, null: true, default: 0.0
    change_column :payrolls, :pregnant_cows, :float, null: true, default: 0.0
    change_column :payrolls, :clinical_mastitis, :float, null: true, default: 0.0
    change_column :payrolls, :cows_on_detour, :float, null: true, default: 0.0
    change_column :payrolls, :abortions_seen, :float, null: true, default: 0.0
    change_column :payrolls, :reproductive_losses, :float, null: true, default: 0.0
    change_column :payrolls, :cows_with_foot_problems, :float, null: true, default: 0.0
    change_column :payrolls, :dead_cows, :float, null: true ,default: 0.0
    change_column :payrolls, :rains, :float, null: true,default: 0.0
  end
end

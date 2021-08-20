class AddDetailPayrolls < ActiveRecord::Migration[6.1]
  def change
    add_column :payrolls, :form_of_supply_balanced_ration, :integer, default: 0
    add_column :payrolls, :bale, :float, default: 0.0
    add_column :payrolls, :form_of_supply_bale, :integer, default: 0
    add_column :payrolls, :proportion_NR_NP, :float, default: 0.0
    add_column :payrolls, :liters_produced, :float, default: 0.0
    add_column :payrolls, :liters_day_VO, :float, default: 0.0
    add_column :payrolls, :concentrated_liters_kg, :float, default: 0.0
    add_column :payrolls, :relationship_grase_protein, :float, default: 0.0
    add_column :payrolls, :number_of_cow_mass, :float, default: 0.0
    add_column :payrolls, :relationship_VO_VM, :float, default: 0.0
    add_column :payrolls, :carga_VM_VMha, :float, default: 0.0
    add_column :payrolls, :protein_produced_in_milk, :float, default: 0.0
    add_column :payrolls, :nitrogen_use_efficiency, :float, default: 0.0
    add_column :payrolls, :daily_excretion, :float, default: 0.0
    add_column :payrolls, :monthly_excretion, :float, default: 0.0
    add_column :payrolls, :urea_nitrogen_in_milk, :float, default: 0.0
    
  end
end

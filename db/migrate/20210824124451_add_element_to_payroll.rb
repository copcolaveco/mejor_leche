class AddElementToPayroll < ActiveRecord::Migration[6.1]
  def change
    add_column :payrolls, :daily_dry_bases_energy_conc, :float
    add_column :payrolls, :daily_dry_bases_protein_conc, :float
    add_column :payrolls, :daily_dry_bases_balanced_ration, :float
    add_column :payrolls, :daily_dry_bases_total, :float
    add_column :payrolls, :daily_dry_bases_wet_grain_silo, :float
    add_column :payrolls, :daily_dry_bases_henilaje, :float
    add_column :payrolls, :daily_dry_bases_silo, :float
    add_column :payrolls, :daily_dry_bases_bale, :float
    add_column :payrolls, :daily_dry_bases_total_without_pasture, :float
    add_column :payrolls, :daily_dry_bases_pasture_consumption, :float
    add_column :payrolls, :daily_proteins_energy_conc, :float
    add_column :payrolls, :daily_proteins_protein_conc, :float
    add_column :payrolls, :daily_proteins_balanced_ration, :float
    add_column :payrolls, :daily_proteins_total, :float
    add_column :payrolls, :daily_proteins_wet_grain_silo, :float
    add_column :payrolls, :daily_proteins_henilaje, :float
    add_column :payrolls, :daily_proteins_silo, :float
    add_column :payrolls, :daily_proteins_bale, :float
    add_column :payrolls, :daily_proteins_total_without_pasture, :float
    add_column :payrolls, :daily_proteins_pasture_consumption, :float
  end
end

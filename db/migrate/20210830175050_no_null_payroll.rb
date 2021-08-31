class NoNullPayroll < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :daily_dry_bases_total_without_pasture, :float, default: 0.0
    change_column :payrolls, :daily_dry_bases_total, :float, default: 0.0
    change_column :payrolls, :daily_dry_bases_pasture_consumption, :float, default: 0.0
    change_column :payrolls, :daily_proteins_total_without_pasture, :float, default: 0.0
    change_column :payrolls, :daily_proteins_total, :float, default: 0.0
    change_column :payrolls, :daily_proteins_pasture_consumption, :float, default: 0.0
  end
end

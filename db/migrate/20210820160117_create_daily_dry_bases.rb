class CreateDailyDryBases < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_dry_bases do |t|
      t.integer :payroll_id
      t.float :energy_concentrate, default: 0.0
      t.float :protein_concentrate, default: 0.0
      t.float :balanced_ration, default: 0.0
      t.float :wet_grain_silo, default: 0.0
      t.float :henilaje, default: 0.0
      t.float :silo, default: 0.0
      t.float :bale, default: 0.0
      t.float :total_without_pasture, default: 0.0
      t.float :total, default: 0.0
      t.float :pasture_consumption, default: 0.0

      t.timestamps
    end
  end
end

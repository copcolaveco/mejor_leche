class CreateDailyProteins < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_proteins do |t|
      t.integer :payroll_id
      t.float :energy_concentrate
      t.float :protein_concentrate
      t.float :balanced_ration
      t.float :wet_grain_silo
      t.float :henilaje
      t.float :silo
      t.float :bale
      t.float :total_without_pasture
      t.float :total
      t.float :pasture_consumption

      t.timestamps
    end
  end
end

class ValoresConcentradosPayrolls < ActiveRecord::Migration[6.1]
  def change
    add_column :payrolls, :dry_base_concentrate, :float, default: 0
    add_column :payrolls, :dry_base_reserve, :float, default: 0
    add_column :payrolls, :dry_base_pasture, :float, default: 0
    add_column :payrolls, :dry_base_total_MS, :float, default: 0
    add_column :payrolls, :protein_consumed_concentrate, :float, default: 0
    add_column :payrolls, :protein_consumed_reserve, :float, default: 0
    add_column :payrolls, :protein_consumed_pasture, :float, default: 0
    add_column :payrolls, :protein_consumed_total_MS, :float, default: 0
  end
end

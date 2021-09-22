class ValoresRecomendadosEnPayrolls < ActiveRecord::Migration[6.1]
  def change
    add_column :payrolls, :recommended_value_rc, :float, default: 250000
    add_column :payrolls, :recommended_value_LNR_LT, :float, default: 5
    add_column :payrolls, :recommended_value_rb, :float, default: 30000
    add_column :payrolls, :recommended_value_grase, :float, default: 3.3
    add_column :payrolls, :recommended_value_protein_min, :float, default: 3
    add_column :payrolls, :recommended_value_protein_max, :float, default: 4
    add_column :payrolls, :recommended_value_lactose_min, :float, default: 4.5
    add_column :payrolls, :recommended_value_lactose_max, :float, default: 5
    add_column :payrolls, :recommended_value_MUN_min, :float, default: 10
    add_column :payrolls, :recommended_value_MUN_max, :float, default: 20
    add_column :payrolls, :recommended_value_cryoscopy_min, :float, default: -0.510
    add_column :payrolls, :recommended_value_cryoscopy_max, :float, default: -0.530
    add_column :payrolls, :recommended_value_mastitis, :float, default: 5
  end
end

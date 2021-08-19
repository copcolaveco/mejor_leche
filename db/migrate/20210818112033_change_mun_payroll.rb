class ChangeMunPayroll < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :mun, :float, null: true, default: 0.0
  end
end

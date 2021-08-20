class ChangeDetailPayrollsType < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :form_of_supply_balanced_ration, :integer
    change_column :payrolls, :form_of_supply_bale, :integer
  end
end

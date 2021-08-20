class AddReferenceToPayrolls < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :form_of_supply_balanced_ration, :float
    change_column :payrolls, :form_of_supply_bale, :float
  end
end

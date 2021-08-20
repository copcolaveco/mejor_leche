class AddReferencesForToSuplieToPayrolls < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:payrolls, :form_of_supply_balanced_ration, nil)
    change_column_default(:payrolls, :form_of_supply_bale, nil)
  end
end

class AddReferences < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :payrolls, :form_of_supplies, column: :form_of_supply_balanced_ration
    add_foreign_key :payrolls, :form_of_supplies, column: :form_of_supply_bale
  end
end

class AddForeingKeyToPayrolls < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :payrolls, :form_of_supplies, column: :form_of_supply_energy
    add_foreign_key :payrolls, :form_of_supplies, column: :form_of_supply_grain
    add_foreign_key :payrolls, :form_of_supplies, column: :form_of_supply_henilages
  end
end

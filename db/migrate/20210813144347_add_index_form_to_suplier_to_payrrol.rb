class AddIndexFormToSuplierToPayrrol < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :payrolls, :form_of_supplies, column: :form_of_supply_protein
  end
end

class AddColumnToFormOfSupply < ActiveRecord::Migration[6.1]
  def change
    add_column :form_of_supplies, :losses, :float
  end
end

class AddEstateToPayroll < ActiveRecord::Migration[6.1]
  def change
    add_column :payrolls, :estate_id, :integer
    add_index :payrolls, :estate_id
  end
end

class AddIndexToPayroll < ActiveRecord::Migration[6.1]
  def change
    add_column :payrolls, :month_id, :integer
    add_index :payrolls, :month_id
  end
end

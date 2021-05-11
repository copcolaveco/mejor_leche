class AddLactoseToPayroll < ActiveRecord::Migration[6.1]
  def change
    add_column :payrolls, :lactose, :string
  end
end

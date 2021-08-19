class AddChangeRacionToPayroll < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :balanced_ration, :float, null: true, default: 0.0
  end
end

class ChangeDatetimeTopayroll < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :saved_date, :date, null: false
  end
end

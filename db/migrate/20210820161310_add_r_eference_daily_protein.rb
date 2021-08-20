class AddREferenceDailyProtein < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :daily_proteins, :payrolls, column: :payroll_id
  end
end

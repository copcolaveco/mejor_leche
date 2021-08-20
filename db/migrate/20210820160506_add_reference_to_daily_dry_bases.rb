class AddReferenceToDailyDryBases < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :daily_dry_bases, :payrolls, column: :payroll_id
  end
end

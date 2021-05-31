class RemoveColumnsToPayroll < ActiveRecord::Migration[6.1]
  def change
    remove_column(:payrolls, :estate_id)
    remove_column(:payrolls, :user_id)
  end
end

class RemoveDetailsToPayroll < ActiveRecord::Migration[6.1]
  def change
    remove_column(:payrolls, :producer)
    remove_column(:payrolls, :location)
    remove_column(:payrolls, :user_type)
  end
end

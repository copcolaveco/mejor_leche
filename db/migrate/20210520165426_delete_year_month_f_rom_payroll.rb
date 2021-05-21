class DeleteYearMonthFRomPayroll < ActiveRecord::Migration[6.1]
  def change
  	remove_column(:payrolls, :year)
  	remove_column(:payrolls, :month_id)
  end
end

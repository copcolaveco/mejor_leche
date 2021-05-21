class AddDatefor < ActiveRecord::Migration[6.1]
  def change
  	add_column :payrolls, :saved_date, :datetime
  end
end

class AddEstateIdToPayroll < ActiveRecord::Migration[6.1]
  def change
    add_reference :payrolls, :estate, null: false, foreign_key: true
  end
end

class AddDepartmentIdToEstates < ActiveRecord::Migration[6.1]
  def change
    add_reference :estates, :department, null: false, foreign_key: true
  end
end

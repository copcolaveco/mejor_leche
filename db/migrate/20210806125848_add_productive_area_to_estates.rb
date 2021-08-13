class AddProductiveAreaToEstates < ActiveRecord::Migration[6.1]
  def change
    add_reference :estates, :productive_areas, null: false, foreign_key: true
  end
end

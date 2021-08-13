class ChangeProduvtiveAreaToEstate < ActiveRecord::Migration[6.1]
  def change
    rename_column :estates, :productive_areas_id, :productive_area_id
  end
end

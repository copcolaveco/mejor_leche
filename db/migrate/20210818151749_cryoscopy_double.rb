class CryoscopyDouble < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :cryoscopy, :float, null: false
  end
end

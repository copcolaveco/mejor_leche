class MunDouble < ActiveRecord::Migration[6.1]
  def change
    change_column :payrolls, :mun, :float, null: true
  end
end

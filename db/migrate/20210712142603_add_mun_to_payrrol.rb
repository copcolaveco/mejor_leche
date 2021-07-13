class AddMunToPayrrol < ActiveRecord::Migration[6.1]
  def change
    add_column :payrolls, :mun, :float
  end
end

class AddRodeosMainBreedsIdToPayroll < ActiveRecord::Migration[6.1]
  def change
    add_reference :payrolls, :rodeos_main_breed, null: false, foreign_key: true
  end
end

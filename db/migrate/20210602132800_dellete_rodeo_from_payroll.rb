class DelleteRodeoFromPayroll < ActiveRecord::Migration[6.1]
  def change
    remove_column(:payrolls, :rodeos_main_breed)
  end
end

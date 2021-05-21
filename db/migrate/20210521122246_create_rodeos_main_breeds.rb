class CreateRodeosMainBreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :rodeos_main_breeds do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end

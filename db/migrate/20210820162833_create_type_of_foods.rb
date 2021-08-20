class CreateTypeOfFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :type_of_foods do |t|
      t.string :name
      t.float :ms
      t.float :protein

      t.timestamps
    end
  end
end

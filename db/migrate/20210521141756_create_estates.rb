class CreateEstates < ActiveRecord::Migration[6.1]
  def change
    create_table :estates do |t|
      t.string :name
      t.string :dicose
      t.integer :user_id

      t.timestamps
    end
    add_index :estates, :user_id
  end
end

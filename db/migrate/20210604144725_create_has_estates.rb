class CreateHasEstates < ActiveRecord::Migration[6.1]
  def change
    create_table :has_estates do |t|
      t.references :estate, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateSecondaryUserTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :secondary_user_types do |t|
      t.string :name

      t.timestamps
    end
  end
end

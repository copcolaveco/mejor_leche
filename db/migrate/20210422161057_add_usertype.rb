class AddUsertype < ActiveRecord::Migration[6.1]
  def change
  	create_table :user_type do |t|
      t.string :typename

      t.timestamps
  end
  end
end

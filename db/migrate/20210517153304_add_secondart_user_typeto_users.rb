class AddSecondartUserTypetoUsers < ActiveRecord::Migration[6.1]
  def change
  	add_column :users, :secondary_user_types_id, :integer
    add_index :users, :secondary_user_types_id
  end
end

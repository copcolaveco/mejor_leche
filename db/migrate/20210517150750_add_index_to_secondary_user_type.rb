class AddIndexToSecondaryUserType < ActiveRecord::Migration[6.1]
  def change
  	add_column :secondary_user_types, :user_type_id, :integer
    add_index :secondary_user_types, :user_type_id
  end
end

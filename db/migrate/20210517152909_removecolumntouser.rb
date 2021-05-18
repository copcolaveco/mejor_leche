class Removecolumntouser < ActiveRecord::Migration[6.1]
  def change
  	remove_column(:users, :user_type_id)
  	remove_column(:users, :sub_user_type_id)
  end
end

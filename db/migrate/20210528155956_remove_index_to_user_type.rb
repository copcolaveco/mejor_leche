class RemoveIndexToUserType < ActiveRecord::Migration[6.1]
  def change
    remove_column(:secondary_user_types, :user_type_id)
  end
end

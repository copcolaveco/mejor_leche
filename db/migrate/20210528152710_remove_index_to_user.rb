class RemoveIndexToUser < ActiveRecord::Migration[6.1]
  def change
    remove_column(:users, :department_id)
    remove_column(:users, :secondary_user_types_id)
  end
end

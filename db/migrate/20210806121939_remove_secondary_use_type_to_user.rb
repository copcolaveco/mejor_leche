class RemoveSecondaryUseTypeToUser < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :secondary_user_type, null: false, foreign_key: true
    remove_column(:users, :user_type_id)
  end
end

class RemoveColumnToSecondaryUserType < ActiveRecord::Migration[6.1]
  def change
    add_reference :secondary_user_types, :user_type, null: false, foreign_key: true
  end
end

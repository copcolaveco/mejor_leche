class AddUserTypeToUserReference < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :user_type, null: false, foreign_key: true
    add_reference :users, :secondary_user_type, null: false, foreign_key: true
  end
end

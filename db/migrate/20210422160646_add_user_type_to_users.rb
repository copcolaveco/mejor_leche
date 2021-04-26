class AddUserTypeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_type, :string
    add_index :users, :user_type
  end
end

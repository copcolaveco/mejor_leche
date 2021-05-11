class ChangeNameTableUserType < ActiveRecord::Migration[6.1]
  def change
  	rename_table :user_type, :user_types
  end
end

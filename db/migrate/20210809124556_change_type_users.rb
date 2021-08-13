class ChangeTypeUsers < ActiveRecord::Migration[6.1]
  change_column :users, :secondary_user_type_id, :bigint, null: true
end

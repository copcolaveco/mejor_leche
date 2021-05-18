class Removeindextouser2 < ActiveRecord::Migration[6.1]
  def change
  	remove_index :completions, name: "index_users_on_user_type_id"
  end
end

class RemoveIndexToEstate < ActiveRecord::Migration[6.1]
  def change
  	remove_index :completions, name: "index_estates_on_user_id"
  end
end

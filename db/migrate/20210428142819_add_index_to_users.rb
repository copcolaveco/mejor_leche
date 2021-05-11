class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :department_id, :integer
    add_index :users, :department_id
  end
end

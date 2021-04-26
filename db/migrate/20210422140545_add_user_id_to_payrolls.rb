class AddUserIdToPayrolls < ActiveRecord::Migration[6.1]
  def change
    add_column :payrolls, :user_id, :integer
    add_index :payrolls, :user_id
  end
end

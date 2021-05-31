class RemoveIndexToPayrolls < ActiveRecord::Migration[6.1]
  def change
    remove_index :completions, name: "index_payrolls_on_estate_id"
    remove_index :completions, name: "index_payrolls_on_user_id"
  end
end

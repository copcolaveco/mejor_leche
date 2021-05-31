class AddUserIdToPayroll < ActiveRecord::Migration[6.1]
  def change
    add_reference :payrolls, :user, null: false, foreign_key: true
  end
end

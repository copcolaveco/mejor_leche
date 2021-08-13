class DeleteDetailsUser < ActiveRecord::Migration[6.1]
  def change
    remove_column(:users, :dicose)
    remove_column(:users, :department)
  end
end

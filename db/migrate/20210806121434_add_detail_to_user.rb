class AddDetailToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :user_types, :public, :integer
  end
end

class AddNewValuesToUserType < ActiveRecord::Migration[6.1]
  def change
    add_column :user_types, :idtype, :integer
  end
end

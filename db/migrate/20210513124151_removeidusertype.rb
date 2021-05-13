class Removeidusertype < ActiveRecord::Migration[6.1]
  def change
  remove_column :user_types, :idtype
  end
end

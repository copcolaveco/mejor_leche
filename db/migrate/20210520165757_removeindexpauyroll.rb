class Removeindexpauyroll < ActiveRecord::Migration[6.1]
  def change
  	drop_table :months
  	drop_table :sub_type_user_productors
  	drop_table :sub_type_user_tecnicos
  	drop_table :sub_user_types
  end
end

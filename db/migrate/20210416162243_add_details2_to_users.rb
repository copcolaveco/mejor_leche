class AddDetails2ToUsers < ActiveRecord::Migration[6.1]
  def change
  	add_column :users, :user_name, :string, null: false, default: ""
    add_column :users, :dicose, :string, null: false, default: ""
    add_column :users, :business_name, :string, null: false, default: ""
    add_column :users, :rut, :string, null: false, default: ""
    add_column :users, :address, :string, null: false, default: ""
    add_column :users, :identification_document, :string, null: false, default: ""
    add_column :users, :phone_one, :string, null: false, default: ""
    add_column :users, :phone_two, :string, null: false, default: ""
    add_column :users, :location, :string, null: false, default: ""
    add_column :users, :department, :string, null: false, default: ""
    add_column :users, :invoice_postal_code, :string, null: false, default: ""
  end
end

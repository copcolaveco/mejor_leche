class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :dicose, :string
    add_column :users, :business_name, :string
    add_column :users, :rut, :string
    add_column :users, :address, :string
    add_column :users, :identification_document, :string
    add_column :users, :phone_one, :string
    add_column :users, :phone_two, :string
    add_column :users, :location, :string
    add_column :users, :department, :string
    add_column :users, :invoice_postal_code, :string
  end
end

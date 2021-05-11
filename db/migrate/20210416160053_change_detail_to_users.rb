class ChangeDetailToUsers < ActiveRecord::Migration[6.1]
  def change
  	remove_column(:users, :user_name)
  	remove_column(:users, :dicose)
  	remove_column(:users, :business_name)
  	remove_column(:users, :rut)
  	remove_column(:users, :address)
  	remove_column(:users, :identification_document)
  	remove_column(:users, :phone_one)
  	remove_column(:users, :phone_two)
  	remove_column(:users, :location)
  	remove_column(:users, :department)
  	remove_column(:users, :invoice_postal_code)
  end
end

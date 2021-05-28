class DeleteColumnUserIrToEstate < ActiveRecord::Migration[6.1]
  def change
  	remove_column(:estates, :user_id)
  end
end

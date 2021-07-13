class DeleteUreaToPayrrol < ActiveRecord::Migration[6.1]
  def change
    remove_column(:payrolls, :urea)
  end
end

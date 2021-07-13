class CreateFormOfSupplies < ActiveRecord::Migration[6.1]
  def change
    create_table :form_of_supplies do |t|
      t.string :name

      t.timestamps
    end
  end
end

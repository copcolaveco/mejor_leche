class DeleteForeingKey < ActiveRecord::Migration[6.1]
  def change
    drop_table :daily_dry_bases 
    drop_table :daily_proteins 
  end
end

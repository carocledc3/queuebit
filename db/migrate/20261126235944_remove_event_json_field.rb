class RemoveEventJsonField < ActiveRecord::Migration[8.1]
  def change
    remove_column :events, :details
  end
end

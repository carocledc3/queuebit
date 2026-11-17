class AddStringDescToEvents < ActiveRecord::Migration[8.1]
  def change
    add_column :events, :description, :text
    add_column :organisations, :description, :text
    add_column :departments, :description, :text
  end
end

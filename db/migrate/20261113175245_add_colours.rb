class AddColours < ActiveRecord::Migration[8.1]
  def change
    add_column :organisations, :colour, :string
    add_column :departments, :colour, :string
  end
end

class AddDepartmentAbbr < ActiveRecord::Migration[8.1]
  def change
    add_column :departments, :abbreviation, :string
  end
end

class AddOrgAbbr < ActiveRecord::Migration[8.1]
  def change
    add_column :organisations, :abbreviation, :string
  end
end

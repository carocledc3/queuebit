class CreateEmployees < ActiveRecord::Migration[8.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :designation
      t.string :contact

      t.timestamps
    end
  end
end

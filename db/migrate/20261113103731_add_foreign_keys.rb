class AddForeignKeys < ActiveRecord::Migration[8.1]
  def change
    add_reference :reservations, :event, null: false, foreign_key: true
    add_reference :events, :employee, null: false, foreign_key: true
    add_reference :employees, :department, null: false, foreign_key: true
    add_reference :reservations, :room, null: false, foreign_key: true
    add_reference :events, :organisation, null: false, foreign_key: true
    add_reference :organisations, :department, null: false, foreign_key: true
    add_reference :departments, :room, null: false, foreign_key: true
    add_reference :rooms, :building, null: false, foreign_key: true
  end
end

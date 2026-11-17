class ChangeResvDtFormat < ActiveRecord::Migration[8.1]
  def change
    change_column :reservations, :reservation_start, :time
    change_column :reservations, :reservation_end, :time
    add_column :reservations, :reservation_date, :date
  end
end

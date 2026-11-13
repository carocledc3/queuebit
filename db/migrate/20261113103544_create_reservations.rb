class CreateReservations < ActiveRecord::Migration[8.1]
  def change
    create_table :reservations do |t|
      t.datetime :reservation_start
      t.datetime :reservation_end

      t.timestamps
    end
  end
end

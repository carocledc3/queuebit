class AddReservationName < ActiveRecord::Migration[8.1]
  def change
    add_column :reservations, :name, :string
  end
end

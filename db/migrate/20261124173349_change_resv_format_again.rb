class ChangeResvFormatAgain < ActiveRecord::Migration[8.1]
  def change
    remove_column :reservations, :reservation_date
  end
end

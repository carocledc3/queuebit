class ChangeResvFormatAgainAgain < ActiveRecord::Migration[8.1]
  def change
    change_column :reservations, :reservation_start, :datetime
    change_column :reservations, :reservation_end, :datetime
  end
end

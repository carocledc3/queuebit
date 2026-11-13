class ImplementRoomTypesToRooms < ActiveRecord::Migration[8.1]
  def change
    add_reference :rooms, :room_type, null: false, foreign_key: true
  end
end

require_relative "../config/environment"
Room.all.each do |room|
  room.reservations.each do |resv|
    room.update_reserved_times(resv.reservation_start, resv.reservation_end)
  end
end

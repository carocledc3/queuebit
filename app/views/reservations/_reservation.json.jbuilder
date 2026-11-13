json.extract! reservation, :id, :reservation_start, :reservation_end, :room_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)

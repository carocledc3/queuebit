class Reservation < ApplicationRecord
  belongs_to :event
  has_one :room
end

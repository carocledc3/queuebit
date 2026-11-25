class NoConflicts < ActiveModel::Validator
  def validate(record)
      unless record.room.reservations.empty?
        record.room.reservations.each do |rt|
        if record == rt; break; end
        if rt.reservation_end > record.reservation_start or rt.reservation_start < record.reservation_end
            record.errors.add(:reservation_start, message: "Reservation conflicts with reservation of #{rt.event.name}")
            break
        end
        end
      end
  end
end

class Reservation < ApplicationRecord
  belongs_to :event
  belongs_to :room
  validates :reservation_start, :reservation_end, presence: true
  validates :reservation_end, comparison: { greater_than: :reservation_start }
  validates_with NoConflicts

  def start_time; self.reservation_start; end
  def end_time; self.reservation_end; end
end

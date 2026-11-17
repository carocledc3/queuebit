class NoConflicts < ActiveModel::Validator
  def validate(record)
      unless record.room.reservations.empty?
        record.room.reservations.each do |rt|
        if rt.end_datetime > record.start_datetime or rt.start_datetime < record.end_datetime
            record.errors.add(:reservation_start, message: "Reservation conflicts with #{rt.event.name}")
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

  def start_datetime
    tx = self.reservation_start
    dx = self.reservation_date
    Time.new(
      dx.year, dx.month, dx.day, tx.hour, tx.min, tx.sec
    )
  end

  def end_datetime
    tx = self.reservation_end
    dx = self.reservation_date
    Time.new(
      dx.year, dx.month, dx.day, tx.hour, tx.min, tx.sec
    )
  end
end

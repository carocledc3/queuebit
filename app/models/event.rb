class Event < ApplicationRecord
  has_many :reservations, dependent: :destroy, inverse_of: :event
  belongs_to :employee
  belongs_to :organisation
  has_one :event_type
  has_one_attached :sarf
  accepts_nested_attributes_for :reservations, allow_destroy: true
end

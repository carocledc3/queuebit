class Event < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_one :employee
  belongs_to :organisation
end

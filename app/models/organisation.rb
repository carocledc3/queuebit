class Organisation < ApplicationRecord
  has_many :events, dependent: :destroy
  has_one :department
end

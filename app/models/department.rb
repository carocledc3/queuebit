class Department < ApplicationRecord
  has_one :room
  has_many :employees, dependent: :destroy
  has_many :organisations, dependent: :destroy
end

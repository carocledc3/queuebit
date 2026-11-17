class Department < ApplicationRecord
  belongs_to :room
  has_many :employees, dependent: :destroy
  has_many :organisations
end

class Employee < ApplicationRecord
  has_many :events
  belongs_to :department
end

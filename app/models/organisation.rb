class Organisation < ApplicationRecord
  has_many :events, dependent: :destroy
  belongs_to :department
end

class Slot < ApplicationRecord
  belongs_to :parking
  has_many :bookings
end

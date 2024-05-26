class CinemaHall < ApplicationRecord
  validates_presence_of :cinema_hall_id, :cinema_hall_name, :total_seats, :location_id
  validates_uniqueness_of :cinema_hall_id

  belongs_to :location
  has_many :cinema_seats
end

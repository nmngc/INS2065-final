class CinemaSeat < ApplicationRecord
  validates_presence_of :cinema_seat_id, :cinema_seat_number, :seat_type, :cinema_hall_id
  validates_uniqueness_of :cinema_seat_id

  belongs_to :cinema_hall
end

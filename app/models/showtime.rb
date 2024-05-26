class Showtime < ApplicationRecord
  validates_presence_of :show_time_id, :movie_id, :show_time, :date_shown, :cinema_hall_id
  validates_uniqueness_of :show_time_id

  belongs_to :movie
  belongs_to :cinema_hall
end

class Movie < ApplicationRecord
    validates_presence_of :movie_id, :movie_name, :duration, :category, :language
    validates_uniqueness_of :movie_id
    validates_numericality_of :numerical_order

    has_many :showtimes
    has_many :cinema_halls, through: :showtimes
    has_many :cinema_seats, through: :cinema_halls
    has_many :tickets, through: :cinema_seats
end

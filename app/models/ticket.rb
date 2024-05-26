class Ticket < ApplicationRecord
  validates_presence_of :ticket_id, :cinema_hall_id, :payment_id, :movie_id, :showtime_id, :cinema_seat_id, :seat_type, :payment_method_id, :customer_id, :price
  validates_uniqueness_of :ticket_id, :payment_id

  belongs_to :cinema_hall
  belongs_to :payment
  belongs_to :movie
  belongs_to :showtime
  belongs_to :cinema_seat
  belongs_to :payment_method
  belongs_to :customer
end

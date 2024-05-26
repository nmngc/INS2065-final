json.extract! ticket, :id, :cinama_hall_id, :payment_id, :movie_id, :showtime_id, :cinema_seat_id, :seat_type, :payment_method_id, :customer_id, :price, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)

class CreateCinemaSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :cinema_seats do |t|
      t.string :cinema_seat_id
      t.string :cinema_seat_number
      t.string :seat_type
      t.references :cinema_hall, null: false, foreign_key: true

      t.timestamps
    end
  end
end

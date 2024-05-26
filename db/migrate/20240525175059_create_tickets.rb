class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.references :cinema_hall, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.references :showtime, null: false, foreign_key: true
      t.references :cinema_seat, null: false, foreign_key: true
      t.string :seat_type
      t.references :payment_method, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end

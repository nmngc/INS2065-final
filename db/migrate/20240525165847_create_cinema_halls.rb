class CreateCinemaHalls < ActiveRecord::Migration[7.0]
  def change
    create_table :cinema_halls do |t|
      t.string :cinema_hall_id
      t.string :cinema_hall_name
      t.integer :total_seats
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end

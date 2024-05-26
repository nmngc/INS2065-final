class CreateShowtimes < ActiveRecord::Migration[7.0]
  def change
    create_table :showtimes do |t|
      t.string :show_time_id
      t.references :movie, null: false, foreign_key: true
      t.time :show_time
      t.date :date_shown
      t.references :cinema_hall, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class DropCustomersAndMoviesTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :bookings, if_exists: true
    drop_table :customers, if_exists: true, force: :cascade
    drop_table :movies, if_exists: true, force: :cascade
  end
end

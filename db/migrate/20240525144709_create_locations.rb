class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :location_id
      t.string :cinema_name
      t.string :location
      t.integer :total_cinema_hall

      t.timestamps
    end
  end
end

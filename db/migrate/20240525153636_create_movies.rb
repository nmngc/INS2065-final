class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.integer :numerical_order
      t.string :movie_name
      t.string :premiere
      t.integer :duration
      t.string :language
      t.string :category

      t.timestamps
    end
  end
end

class ReorderMoviesColumns < ActiveRecord::Migration[7.0]
  def change
    # Rename the existing movie_id column
    rename_column :movies, :movie_id, :temp_movie_id

    # Create a new movie_id column as the first column
    add_column :movies, :movie_id, :string, first: true

    # Copy data from the renamed column to the new one
    execute "UPDATE movies SET movie_id = temp_movie_id"

    # Remove the renamed column
    remove_column :movies, :temp_movie_id
  end
end

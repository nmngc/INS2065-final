class AddMovieidToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :movie_id, :string
  end
end

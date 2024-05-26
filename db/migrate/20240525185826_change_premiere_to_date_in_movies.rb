class ChangePremiereToDateInMovies < ActiveRecord::Migration[7.0]
  def up
    # Convert empty strings to NULL
    execute <<-SQL
      UPDATE movies
      SET premiere = NULL
      WHERE premiere = '';
    SQL

    # Change column data type to date with explicit conversion
    change_column :movies, :premiere, :date, using: 'premiere::date'
  end

  def down
    # Change column data type back to string
    change_column :movies, :premiere, :string
  end
end

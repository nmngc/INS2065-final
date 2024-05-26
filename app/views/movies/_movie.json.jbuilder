json.extract! movie, :id, :numerical_order, :movie_name, :premiere, :duration, :language, :category, :created_at, :updated_at
json.url movie_url(movie, format: :json)

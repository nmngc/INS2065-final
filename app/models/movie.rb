class Movie < ApplicationRecord
    validates_presence_of :movie_id, :movie_name, :duration, :category, :language
    validates_uniqueness_of :movie_id
    
    validates_numericality_of :numerical_order
end

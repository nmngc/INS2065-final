class Location < ApplicationRecord
    validates_presence_of :location_id, :cinema_name, :location, :total_cinema_hall
    validates_uniqueness_of :location_id, :cinema_name
    validates_numericality_of :total_cinema_hall

end

class Artist < ActiveRecord::Base
	has_many :artist_genres
	has_many :genres, through: :artist_genres
	has_many :albums
end

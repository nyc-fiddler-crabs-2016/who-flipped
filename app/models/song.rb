class Song < ActiveRecord::Base
	has_many :sample_songs
	has_many :samples, through: :sample_songs
	has_many :submissions
end

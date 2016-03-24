class Song < ActiveRecord::Base
	belongs_to :album
	has_many :sample_songs
	has_many :samples, through: :sample_songs
	has_many :submissions
end

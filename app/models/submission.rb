class Submission < ActiveRecord::Base
	belongs_to :user
	belongs_to :album
	belongs_to :artist
	belongs_to :song
	belongs_to :sample
end

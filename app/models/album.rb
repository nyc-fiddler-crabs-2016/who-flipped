class Album < ActiveRecord::Base
	belongs_to :aritst
	belongs_to :submission
end

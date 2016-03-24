class AlbumsController < ApplicationController
	def show
		@album = Album.find_by(id: params[:id])
		@songs = @album.songs
	end
end
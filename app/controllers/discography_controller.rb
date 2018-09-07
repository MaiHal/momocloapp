class DiscographyController < ApplicationController
	def index 
		@discography = Discography.all
		@albums = Album.order(id: :desc)
	end
end
class DiscographyController < ApplicationController
	def index 
		@discography = Discography.all
	end
end
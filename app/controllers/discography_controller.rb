class DiscographyController < ApplicationController
	def index 
		@discography = Discography.limit(3).offset(4)
	end
end
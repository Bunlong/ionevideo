class IndexesController < ApplicationController
	layout 'site'
	
	def index
		@new_musics = Music.last(6).reverse
		@movies = Movie.last(6).reverse
	end
end

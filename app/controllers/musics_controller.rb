class MusicsController < ApplicationController
	layout 'site'

	def index
		@singers = Singer.all
	end
	
end

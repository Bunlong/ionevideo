class Admin::MusicsController < ApplicationController
	layout 'admin'
	
	def index
		@musics = Music.paginate(:per_page => 5, :page => params[:page])	
	end

	def new
		@music = Music.new
	end

	def create
		@music = Music.new(params[:music])
		
		if @music.save
			flash[:notice] = "Music has been created."
			redirect_to admin_musics_path
		else
			render :new
		end
	end
end

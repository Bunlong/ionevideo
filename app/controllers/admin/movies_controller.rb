class Admin::MoviesController < ApplicationController
	layout 'admin'

	def index
		@movies = Movie.paginate(:per_page => 5, :page => params[:page])
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(params[:movie])
		
		if @movie.save
			flash[:notice] = "Movie has been created."
			redirect_to admin_movies_path
		else
			render :new
		end
	end
end
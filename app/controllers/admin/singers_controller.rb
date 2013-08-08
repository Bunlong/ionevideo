class Admin::SingersController < ApplicationController
	layout 'admin'

	def index
		@singers = Singer.paginate(:per_page => 5, :page => params[:page])
	end

	def new
		@singer = Singer.new
	end

	def create
		@singer = Singer.new(params[:singer])
		
		if @singer.save
			flash[:notice] = "Singer has been created."
			redirect_to admin_singers_path
		else
			render :new
		end
	end
end
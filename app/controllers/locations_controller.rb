class LocationsController < ApplicationController
	def index
		@locations = Location.last_created(5)
	end
	def show
		redirect_to action: 'index', controller: 'locations' unless @location = Location.find_by_name(params[:id])
		flash[:error] = "This location doesn't exist!"
	end
	def new
		@location = Location.new #esta nueva visita esta asociada a la localizacion
	end

	def create
		@location = Location.new location_params

		if @location.save
			flash[:notice] = "Congratulation, a new location was created!"
 			redirect_to action: 'index', controller: 'locations'
		else
			
			render 'new'
		end
	end

		private	
	def location_params
		params.require(:location).permit(:name, :latitud, :longitud, :zip_code, :city, :country, :description)
	end

end




class LocationsController < ApplicationController
	def index
		@locations = Location.last_created(2)
	end
	def show
		@locations = Location.find(params[:id])
	end
end

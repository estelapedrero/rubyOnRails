class VisitsController < ApplicationController
	def index
		@location = Location.find(params[:id])
		@visits = @location.visits
	end
	def show
		@visits = Visit.find(params[:location_id])
	end
end

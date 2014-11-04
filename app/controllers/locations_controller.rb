class LocationsController < ApplicationController
	def index
		@locations = Location.last_created(2)
	end
end

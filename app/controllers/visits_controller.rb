class VisitsController < ApplicationController
	def index
		@location = Location.find_by_name(params[:location_id])
		@visits = @location.visits.last_created(6)
	end

	def show
		@visits = Visit.find(params[:id])	
	end

	def new
		@location=Location.find_by_name params[:location_id]
		@visit = @location.visits.new #esta nueva visita esta asociada a la localizacion
		@user = User.all
	end

	def destroy
		visit = Visit.destroy(params[:id])
		redirect_to location_visits_path visit.location
	end

	def create
		@location=Location.find_by_name params[:location_id]
		@visit = @location.visits.new visit_params

		if @visit.save
			flash[:notice] = "Congratulation, visit was created!"
 			redirect_to location_visits_path @location
		else
			flash[:error] = 'MAAAAAL!'
			render 'new'
		end
	end

	def edit
 		@location = Location.find(params[:location_id])
 		@visit = Visit.find(params[:id])
 	end

	def update
		@visit = Visit.find(params[:id])
		if @visit.update_attributes visit_params
			redirect_to location_visits_path(@visit.location)
		else
			@errors = @visits.errors.full_messages
			render 'edit'
		end
	end

	private	
	def visit_params
		params.require(:visit).permit(:user_id, :from_date, :to_date)
	end

end

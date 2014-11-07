class UsersController < ApplicationController
	def index
		@users = User.showOrdenado(50)
	end

	def show
		redirect_to action: 'index', controller: 'users' unless @user = User.find(params[:id])
		flash[:error] = "This user doesn't exist!"
	end

	def new
		@user = User.new #esta nueva visita esta asociada a la localizacion
	end

	def create
		@user = User.new user_params

		if @user.save
			flash[:notice] = "Congratulation, a new user was created!"
 			redirect_to action: 'index', controller: 'users'
		else
			render 'new'
		end
	end

	private	
	def user_params
		params.require(:user).permit(:name, :email)
	end
end



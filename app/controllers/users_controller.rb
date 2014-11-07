class UsersController < ApplicationController
	def index
		@users = User.showOrdenado(50)
	end
	def new
		@user = User.new #esta nueva visita esta asociada a la localizacion
	end






	private	
	def user_params
		params.require(:user).permit(:name, :email)
	end
end


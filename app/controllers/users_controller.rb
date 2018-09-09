class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(users_params)
		if @user.save
			render 'index'
		else
			render 'new'
		end
	end

	def users_params
		params.require(:user).permit(:name, :email, :password)
	end
end

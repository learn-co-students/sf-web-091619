class DinnersController < ApplicationController
	before_action :find_dinner, only: [:show, :edit, :update, :destroy]
	before_action :find_users, only: [:new, :edit]

	def index
		@dinners = Dinner.all
	end

	def show
	end

	def create
		@dinner = Dinner.create(dinner_params)

		redirect_to @dinner
	end

	def new
		@dinner = Dinner.new
	end

	def update
		@dinner.update(dinner_params)
		redirect_to @dinner
	end

	def edit
	end

	def destroy
		@dinner.destroy
		redirect_to dinners_path
	end

	private
	def dinner_params
		params.require(:dinner).permit(:name, :cost, :user_id)
	end

	def find_dinner
		@dinner = Dinner.find(params[:id])
	end

	def find_users
		@users = User.all
	end
end

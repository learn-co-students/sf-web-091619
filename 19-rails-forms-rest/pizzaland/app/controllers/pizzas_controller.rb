class PizzasController < ApplicationController
	before_action :find_pizza, only: [:show]
	# before_action :find_pizza

	def index
		@pizzas = Pizza.all
		# render :index
	end

	def show
	end

	def new
		@pizza = Pizza.new
	end

	def create
		@pizza = Pizza.new(pizza_params)

		if @pizza.save
			# redirect_to pizzas_path
			redirect_to pizza_path(@pizza.id)
		else
			render 'new'
		end
	end

	private
	def pizza_params
		params.require(:pizza).permit(:name, :cost, :size, :extra_cheese)
	end

	def find_pizza
		@pizza = Pizza.find(params[:id])
	end
end

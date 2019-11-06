class AnimalsController < ApplicationController
	# GET /animals
	def index
		animals = Animal.all
		render json: animals
	end

	# GET /animals/:id
	def show
		animal = Animal.find(params[:id])
		render json: animal
	end

	# POST /animals
	def create
		animal = Animal.new(animal_params)
		# byebug

		# {animal: {
		# 	name: "",
		# 	gender: ""
		# }}

		if animal.save
			render json: animal
		else
			render json: { error: "Something went wrong, try again" }
		end
	end

	# PATCH /animals/:id
	def update
		animal = Animal.find(params[:id])
		animal.update(animal_params)
		render json: animal
	end

	# DELETE /animals/:id
	def destroy
		animal = Animal.find(params[:id])
		animal.destroy
		render json: { message: "Successfully deleted animal." }
	end

	# JS will take care of NEW and EDIT

	private
	def animal_params
		params.require(:animal).permit(:name, :gender, :species_id)
	end
end

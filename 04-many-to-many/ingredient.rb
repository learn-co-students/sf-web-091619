class Ingredient
	attr_accessor :name
	@@ingredients = []

	def initialize(name)
		@name = name
		@@ingredients << self
	end

	def self.all
		@@ingredients
	end

	def recipe_ingredient
		RecipeIngredient.all.select do |recipe_ingredient|
			recipe_ingredient.ingredient == self
		end
	end

	def recipes
		recipe_ingredient.map do |recipe_ingredient|
			recipe_ingredient.recipe
		end
	end
end

5.times do
	Ingredient.new(Faker::Food.ingredient)
end

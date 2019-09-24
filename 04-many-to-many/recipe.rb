# 1. Create recipe class
class Recipe
	# 2. Add getter & setter (reader & writer) methods for recipe name, serving size & ingredients
	# 3. What do getter & setter methods look like without the macro
	attr_accessor :name, :serving_size, :ingredients

	# 4. Keep all of our recipes in one place
	@@all = []

	# 5. Create method that will take a recipe name to create a new recipe
	# 6. Add a default argument for serving size
	def initialize(name, serving_size=1)
		@name = name
		@serving_size = serving_size
		# 7. Create a place to store all of our ingredients
		@ingredients = []

		# 8. How do we save the recipe to our array
		@@all << self
	end

	# 9. Method that enables us to access all of our recipes from a differnt class
	def self.all
		@@all
	end

	def recipe_ingredients # Accessing just the recipe ingredients that belong to this particular recipe
		RecipeIngredient.all.select do |recipe_ingredient|
			recipe_ingredient.recipe == self
		end
	end

	def ingredients
		recipe_ingredients.map do |recipe_ingredient|
			recipe_ingredient.ingredient
		end
	end
end

5.times do
	Recipe.new(Faker::Food.dish)
end

# 1. Create recipe class
class Recipe
	# 2. Add getter & setter (reader & writer) methods for recipe name, serving size & ingredients
	attr_accessor :recipe_name, :serving_size
	# 3. What do getter & setter methods look like without the macro
	# def name
	# 	@name
	# end

	# def name=(our_name)
	# 	 @name = our_name
	# end
	# 4. Keep all of our recipes in one place
	@@recipes = []
	# 5. Create method that will take a recipe name to create a new recipe
	# 6. Add a default argument for serving size
	def initialize(recipe_name, serving_size=1)
		@recipe_name = recipe_name
		@serving_size = serving_size
		# 7. Create a place to store all of our ingredients
		# 8. How do we save the recipe to our array
		@@recipes << self
	end
	# 9. Method that enables us to access all of our recipes from a differnt class
	def self.all
		@@recipes
	end

	def recipe_ingredient
		RecipeIngredient.all.select do |recipe_ingredient|
			recipe_ingredient.recipe == self
		end
	end

	def ingredients
		recipe_ingredient.map do |recipe_ingredient|
			recipe_ingredient.ingredient
		end
	end
end

5.times do
	Recipe.new(Faker::Food.dish)
end
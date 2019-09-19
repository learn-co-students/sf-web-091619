class RecipeIngredient
	attr_accessor :recipe, :ingredient
	@@all = []

	def initialize(recipe, ingredient)
		@recipe = recipe
		@ingredient = ingredient
		@@all << self # #<RecipeIngredient:0x00007f8c223aa8f8 @ingredient=#<Ingredient:0x00007f8c21ce1a58 @name="Pumpkin", @recipes=[]>,@recipe=#<Recipe:0x00007f8c21cd89a8 @ingredients=[], @recipe_name="Mushroom Risotto", @serving_size=1>>
	end

	def self.all
		@@all
	end
end

# RecipeIngredient.new()
require 'pry'
require 'faker'

require_relative './recipe.rb'
require_relative './ingredient.rb'
require_relative './recipe_ingredient.rb'
RecipeIngredient.new(Recipe.all.first, Ingredient.all.first)
RecipeIngredient.new(Recipe.all[1], Ingredient.all[1])
RecipeIngredient.new(Recipe.all[2], Ingredient.all[2])
RecipeIngredient.new(Recipe.all[0], Ingredient.all[4])
RecipeIngredient.new(Recipe.all[3], Ingredient.all[2])
# binding.pry
# Recipe.all.first.ingredients
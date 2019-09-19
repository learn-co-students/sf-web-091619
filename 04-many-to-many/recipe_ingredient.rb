# This class represents the relationship between recipe and ingredients
# each class is responsible for knowing about itself, the recipe ingredient class is responsible for knowing about the relationships

class RecipeIngredient
  attr_accessor :recipe, :ingredient, :amount
  @@all = []

  def initialize(recipe, ingredient, amount="1 teaspoon") 
    # What do we pass in here for recipe and ingredient?
    @recipe = recipe
    @ingredient = ingredient
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end
end

RecipeIngredient.new(Recipe.all.first, Ingredient.all.first)
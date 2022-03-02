class RecipesIngredientsController < ApplicationController
  def index
    @recipes_ingredients = RecipesIngredient.all
  end
end

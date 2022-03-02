class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @blank_stars = 5 - @recipe.rating.to_i
  end

  def new
    @recipe = Recipe.new
    @recipe.recipes_ingredients.build
  end

  def create
    # raise
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    # raise
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :era, :country, :instructions, :prep_time, recipes_ingredients_attributes: {})
  end
end

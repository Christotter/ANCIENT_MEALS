class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:ingredients]
      @recipes = Recipe.joins(:recipes_ingredients).where("recipes_ingredients.ingredient_id IN (?)", params[:ingredients])
      # TODO: find a better way of doing this (THIS IS HORRIBLE)
      @recipes = @recipes.select { |recipe| @recipes.to_a.count(recipe) >= params[:ingredients].length }.uniq

    elsif params[:query]
      @recipes = Recipe.where('instructions ILIKE :search_query OR country ILIKE :search_query OR recipes.name ILIKE :search_query', search_query: "%#{params[:query]}%")
    else
      @recipes = Recipe.all
    end
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

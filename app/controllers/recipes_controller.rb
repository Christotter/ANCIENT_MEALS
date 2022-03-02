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
  end

end

class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query]
      @recipes = Recipe.joins(:user).where('instructions ILIKE :search_query OR country ILIKE :search_query OR recipes.name ILIKE :search_query', search_query: "%#{params[:query]}%")
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

end

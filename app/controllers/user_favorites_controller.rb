class UserFavoritesController < ApplicationController
  def index
    @user_favorites = UserFavorite.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @user_favorite = UserFavorite.new
  end

  # Needs to be check
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @user_favorite = UserFavorite.new
    @user_favorite.recipe = @recipe

    @user_favorite.user = current_user

    if @user_favorite.save
      redirect_to recipe_path(@recipe), notice: 'Added in favorites'
    else
      redirect_to recipe_path(@recipe), notice: "There was an error"
    end
  end
  #---------------

  def destroy
    @user_favorite = UserFavorite.find(params[:id])
    #@recipe = Recipe.find(params[:id])
    @user_favorite.destroy
    redirect_to recipe_path(@user_favorite.recipe), notice: 'Removed from favorites'
  end
end

class UserRatingsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @user_rating = UserFavorite.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @user_rating = UserRating.new(rating_params)
    @user_rating.recipe = @recipe

    @user_rating.user = current_user

    if @user_rating.save
      update_recipe_rating
      redirect_to recipe_path(@recipe), notice: 'Rated'
    else
      redirect_to recipe_path(@recipe)
    end
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @user_rating = UserRating.find(params[:id])
    @user_rating.update(rating_params)
    update_recipe_rating
    redirect_to recipe_path(@recipe), notice: 'Rate updated'
  end

  private

  def update_recipe_rating
    @recipe.rating = @recipe.user_ratings.sum(:vote) / @recipe.user_ratings.count
    @recipe.save!
  end

  def rating_params
    params.require(:user_rating).permit(:vote)
  end
end

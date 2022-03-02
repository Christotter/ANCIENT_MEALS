class UserFavoritesController < ApplicationController
  def index
    @user_favorites = UserFavorite.all

  end
end

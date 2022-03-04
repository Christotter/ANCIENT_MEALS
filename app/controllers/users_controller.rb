class UsersController < ApplicationController
  def index
  end

  def cookbook
    @cookbook = UserFavorite.all
  end
end

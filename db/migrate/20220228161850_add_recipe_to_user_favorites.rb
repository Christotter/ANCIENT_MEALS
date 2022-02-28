class AddRecipeToUserFavorites < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_favorites, :recipe, null: false, foreign_key: true
  end
end

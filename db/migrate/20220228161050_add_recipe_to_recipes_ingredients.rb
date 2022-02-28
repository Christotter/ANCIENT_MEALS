class AddRecipeToRecipesIngredients < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipes_ingredients, :recipe, null: false, foreign_key: true
  end
end

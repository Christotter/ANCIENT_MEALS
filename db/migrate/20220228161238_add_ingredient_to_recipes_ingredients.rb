class AddIngredientToRecipesIngredients < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipes_ingredients, :ingredient, null: false, foreign_key: true
  end
end

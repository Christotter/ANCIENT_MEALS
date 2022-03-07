class AddQuantityToRecipesIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes_ingredients, :quantity, :string
  end
end

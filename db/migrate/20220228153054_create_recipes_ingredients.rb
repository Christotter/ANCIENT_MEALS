class CreateRecipesIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes_ingredients do |t|

      t.timestamps
    end
  end
end

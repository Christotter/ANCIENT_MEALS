class RemoveImageToRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :image
  end
end

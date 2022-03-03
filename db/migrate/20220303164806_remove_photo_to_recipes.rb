class RemovePhotoToRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :photo
  end
end

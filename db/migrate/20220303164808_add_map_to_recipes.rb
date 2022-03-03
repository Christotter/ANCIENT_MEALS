class AddMapToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :latitude, :float
    add_column :recipes, :longitude, :float
    add_column :recipes, :country_code, :string
  end
end

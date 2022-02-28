class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :era
      t.string :country
      t.text :instructions
      t.float :rating
      t.string :prep_time

      t.timestamps
    end
  end
end

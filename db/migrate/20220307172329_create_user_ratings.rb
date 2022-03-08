class CreateUserRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_ratings do |t|
      t.float :vote
      t.timestamps
    end
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

require "open-uri"
puts "Cleaning db..."
Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all
UserFavorite.destroy_all
RecipesIngredient.destroy_all

#Create random 6 users
puts "creating users"
users = []
(1..6).each do |i|
  users << User.create!(email: Faker::Internet.email, name: Faker::Name.name,
    password: "123456", password_confirmation: "123456")
  puts "user +#{i}"
end

# Creating recipes
recipe_1 = Recipe.new
recipe_2 = Recipe.new
recipe_3 = Recipe.new
recipe_4 = Recipe.new
recipe_5 = Recipe.new
recipe_6 = Recipe.new

puts "recipes created"

# Let's define recipes

# recipe 1
recipe_1.name = 'Cabbage the Athenian way'
recipe_1.era = "4th century AD"
recipe_1.country = "Greek"
recipe_1.instructions = "Cabbage should be sliced with the sharpest possible iron blade,
    then washed, drained, and chopped with plenty of
    coriander and rue. Then sprinkle with honey vinegar
    and add just a little bit of silphium. Incidentally, you can eat this as a meze."
recipe_1.rating = 4.8
recipe_1.prep_time = 0
recipe_1.user = users[0]
recipe_1.save!

# recipe 2
recipe_2.name = 'Honey glazed prawns'
recipe_2.era = '1st–2nd century AD'
recipe_2.country = 'Roman'
recipe_2.instructions = "If using frozen prawns, ensure that they are well defrosted and drained.
    Place the oil, ﬁsh sauce and honey in a saucepan and add the prawns. Sauté them gently in the sauce for
    2 or 3 minutes until they are tender. Remove with a perforated spoon and keep warm. Continue to cook the
    sauce until it has reduced by half.
    Add the chopped oregano and pour the sauce over the shrimps.
    Sprinkle with freshly ground black pepper.
    Serve as a ﬁrst course with a crusty loaf of bread and a simple salad."
recipe_2.rating = 4.5
recipe_2.prep_time = 0
recipe_2.user = users[1]
recipe_2.save!

# recipe 3
recipe_3.name = 'Ancient-Style Bread'
recipe_3.era = '1700 BC'
recipe_3.country = 'Mesopotamia'
recipe_3.instructions = "Mix the water, flour, and salt together slowly. Then knead the dough and form it
    into flat round patties.
    Cover the dough with a cloth and let it sit overnight. The next day, bake it in
    an oven at 350°F for 30 minutes. For an authentic Mesopotamian experience,
    eat the bread with a raw onion!"
recipe_3.rating = 4.7
recipe_3.prep_time = 0
recipe_3.user = users[2]
recipe_3.save!

# recipe 4
recipe_4.name = 'Pancakes with Honey and Sesame Seeds'
recipe_4.era = '5th century BC'
recipe_4.country = 'Greek'
recipe_4.instructions = "Mix the ﬂour, water and one tablespoon of honey together into a batter.
    Heat two tablespoons of oil in a frying-pan and pour a quarter of the mixture in. When it has set,
    turn it two or three times to give an even colour. Cook three more pancakes in the same way.
    Serve all four pancakes hot with the remainder of the honey poured over and sprinkled with sesame seeds."
recipe_4.rating = 4.9
recipe_4.prep_time = 0
recipe_4.user = users[3]
recipe_4.save!

# recipe 5
recipe_5.name = 'Cheesecake'
recipe_5.era = '1st century AD'
recipe_5.country = 'Roman'
recipe_5.instructions = "Libum to be made as follows: 2 lb cheese well crushed in a mortar; when it is well crushed, a
    dd in 1 lb bread-wheat ﬂour or, if you want it to be lighter, just half a pound, to be mixed well with the cheese.
    Add one egg and mix all together well.
    Make a loaf of this, with leaves under it, and cook slowly in a hot ﬁre under a brick."
recipe_5.rating = 5.0
recipe_5.prep_time = '25 minutes'
recipe_5.user = users[4]
recipe_5.save!

# recipe 6
recipe_6.name = 'Delian Sweets'
recipe_6.era = 'around 540 BC'
recipe_6.country = 'Greek'
recipe_6.instructions = "Bring the water to the boil and add the sifted flour in one go, beating vigorously to incorporate.
Cook out for a few minutes and turn out on to a large plate, or a marble slab if you have one. Allow to cool completely.
Heat the olive oil in a deep-fryer or pan. Cut the paste into cubes – it will be ﬁrm but still a little sticky.
Test the oil for temperature with a little of the mixture – if it rises and colours, the oil is ready. Drop the cubes in the oil,
2 or 3 at a time. Cook for 3 to 4 minutes until golden-brown and lift out on to kitchen paper. While they are still warm,
garnish with a little warmed honey over the fritters and sprinkle them with either poppy seeds or freshly ground pepper."
recipe_6.rating = 4.4
recipe_6.prep_time = 0
recipe_6.user = users[5]
recipe_6.save!

# recipe = name, era, country, instructions, rating, prep_time
puts "Recipes: "
puts recipe_1.name
puts recipe_2.name
puts recipe_3.name

puts recipe_5.name
puts recipe_6.name

puts " "
puts "Users: "
users.each do |user|
  puts user.name
end

# Ingredients:
flour = Ingredient.create!(name: "flour")
water = Ingredient.create!(name: "water")
salt = Ingredient.create!(name: "salt")
cabbage = Ingredient.create!(name: "cabbage")
coriander = Ingredient.create!(name: "coriander")
rue = Ingredient.create!(name: "rue")
powder = Ingredient.create!(name: "powder")
prawns = Ingredient.create!(name: "prawns")
olive_oil = Ingredient.create!(name: "olive oil ")
fish_sauce = Ingredient.create!(name: "ﬁsh sauce")
honey = Ingredient.create!(name: "honey")
oil = Ingredient.create!(name: "oil")
seeds = Ingredient.create!(name: "seeds")
cheese = Ingredient.create!(name: "cheese")
egg = Ingredient.create!(name: "egg")
bay_leaves = Ingredient.create!(name: "bay leaves")
black_pepper = Ingredient.create!(name: "black pepper")


# Let's create Recipes Ingredients
RecipesIngredient.create!(recipe: recipe_1, ingredient: cabbage)
RecipesIngredient.create!(recipe: recipe_1, ingredient: coriander)
RecipesIngredient.create!(recipe: recipe_1, ingredient: powder)
RecipesIngredient.create!(recipe: recipe_1, ingredient: rue)
RecipesIngredient.create!(recipe: recipe_1, ingredient: salt)

RecipesIngredient.create!(recipe: recipe_2, ingredient: prawns)
RecipesIngredient.create!(recipe: recipe_2, ingredient: olive_oil)
RecipesIngredient.create!(recipe: recipe_2, ingredient: fish_sauce)

RecipesIngredient.create!(recipe: recipe_3, ingredient: flour)
RecipesIngredient.create!(recipe: recipe_3, ingredient: water)
RecipesIngredient.create!(recipe: recipe_3, ingredient: salt)

RecipesIngredient.create!(recipe: recipe_4, ingredient: flour)
RecipesIngredient.create!(recipe: recipe_4, ingredient: water)
RecipesIngredient.create!(recipe: recipe_4, ingredient: honey)
RecipesIngredient.create!(recipe: recipe_4, ingredient: oil)
RecipesIngredient.create!(recipe: recipe_4, ingredient: seeds)

RecipesIngredient.create!(recipe: recipe_5, ingredient: flour)
RecipesIngredient.create!(recipe: recipe_5, ingredient: cheese)
RecipesIngredient.create!(recipe: recipe_5, ingredient: egg)
RecipesIngredient.create!(recipe: recipe_5, ingredient: bay_leaves)
RecipesIngredient.create!(recipe: recipe_5, ingredient: honey)

RecipesIngredient.create!(recipe: recipe_6, ingredient: flour)
RecipesIngredient.create!(recipe: recipe_6, ingredient: water)
RecipesIngredient.create!(recipe: recipe_6, ingredient: olive_oil)
RecipesIngredient.create!(recipe: recipe_6, ingredient: black_pepper)
RecipesIngredient.create!(recipe: recipe_6, ingredient: honey)

puts RecipesIngredient.all

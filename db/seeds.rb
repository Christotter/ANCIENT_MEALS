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

# Create random 6 users
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
recipe_7 = Recipe.new
recipe_8 = Recipe.new
recipe_9 = Recipe.new
recipe_10 = Recipe.new
recipe_11 = Recipe.new
recipe_12 = Recipe.new
recipe_13 = Recipe.new
recipe_14 = Recipe.new
recipe_15 = Recipe.new
recipe_16 = Recipe.new
recipe_17 = Recipe.new
recipe_18 = Recipe.new
recipe_19 = Recipe.new
recipe_20 = Recipe.new
recipe_21 = Recipe.new
recipe_22 = Recipe.new
recipe_23 = Recipe.new
recipe_24 = Recipe.new
recipe_25 = Recipe.new
recipe_26 = Recipe.new
recipe_27 = Recipe.new
recipe_28 = Recipe.new


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
recipe_1.longitude = 23.727539
recipe_1.latitude = 37.983810
recipe_1.country_code = "GRC"
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
recipe_2.longitude = 12.496366
recipe_2.latitude = 41.902782
recipe_2.country_code = "ITA"
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
recipe_3.longitude = 43.483738
recipe_3.latitude = 34.5337527
recipe_3.country_code = "IRN"
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
recipe_4.longitude = 23.727539
recipe_4.latitude = 37.983810
recipe_4.country_code = "GRC"
recipe_4.save!

# recipe 5
recipe_5.name = 'Ancient Cheesecake'
recipe_5.era = '1st century AD'
recipe_5.country = 'Roman'
recipe_5.instructions = "Libum to be made as follows: 2 lb cheese well crushed in a mortar; when it is well crushed, a
    dd in 1 lb bread-wheat ﬂoEur or, if you want it to be lighter, just half a pound, to be mixed well with the cheese.
    Add one egg and mix all together well.
    Make a loaf of this, with leaves under it, and cook slowly in a hot ﬁre under a brick."
recipe_5.rating = 5.0
recipe_5.prep_time = '25 minutes'
recipe_5.user = users[4]
recipe_5.longitude = 12.496366
recipe_5.latitude = 41.902782
recipe_5.country_code = "ITA"
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
recipe_6.longitude = 23.727539
recipe_6.latitude = 37.983810
recipe_6.country_code = "GRC"
recipe_6.save!

# recipe 7
recipe_7.name = 'Sasqu - Porridge with dates'
recipe_7.era = 'around 1700 BC'
recipe_7.country = 'Mesopotamia'
recipe_7.instructions = "Place the barley flour in a saucepan. Slowly whisk in the milk, stirring constantly.
Bring to a boil, reduce the heat, and cook for 5 minutes.
Season with salt and date syrup. Turn into serving cups and scatter with the chopped dates."
recipe_7.rating = 4.1
recipe_7.prep_time = "5 min"
recipe_7.user = users[3]
recipe_7.longitude = 43.483738
recipe_7.latitude = 34.5337527
recipe_7.country_code = "IRN"
recipe_7.save!

# recipe 8
recipe_8.name = 'Palace Cake'
recipe_8.era = 'around 1700 BC'
recipe_8.country = 'Mesopotamia'
recipe_8.instructions = "Preheat the oven to 325 degrees F.
Combine the dates, raisins, and spice and scatter in a 10-inch cake pan.
Press the cottage cheese through a strainer to break up the curds.
Combine the cheese with the melted butter, eggs, and milk and slowly stir into the flour, moistening thoroughly.
Pour the batter over the dried fruits and bake for 45-55 minutes, or until a toothpick inserted into the centers comes out clean."
recipe_8.rating = 4.8
recipe_8.prep_time = "45 to 55 min"
recipe_8.user = users[2]
recipe_8.longitude = 43.483738
recipe_8.latitude = 34.5337527
recipe_8.country_code = "IRN"
recipe_8.save!

# recipe 9
recipe_9.name = 'Dried Fruit Compote'
recipe_9.era = "around 1700 BC"
recipe_9.country = "Mesopotamia"
recipe_9.instructions = "Combine all of the ingredients in a saucepan and bring to a boil.
Simmer until tender, about 10 minutes.
Remove the fruit with a slotted spoon and reserve. Reduce the cooking liquid by boiling to a light syrup.
Combine with the poached fruits."
recipe_9.rating = 4.9
recipe_9.prep_time = "10 min"
recipe_9.user = users[1]
recipe_9.longitude = 43.483738
recipe_9.latitude = 34.5337527
recipe_9.country_code = "IRN"
recipe_9.save!

# recipe 10
recipe_10.name = 'Aish Baladi - Egyptian Flat Bread'
recipe_10.era = "between 3800-3000 BC"
recipe_10.country = "Egypt"
recipe_10.instructions = "Mix the flour with the salt and yeast in a large bols. Make a well in the centre and our in the water.
Gradually draw the flour into the water and mix to a soft dough. Knead by hand on a floured board for 15 minutes, or for 10 minutes in a food processor fitted with a dough hook.
Pour a little oil into the bottom of a bowl, roll the dough in it and cover the bowl with a clean damp cloth or cling film.
Put in a warm place for 1 1/2-2 hours or until the dough has almost doubled in size.
Remove the dough from the bowl and 'knock back' or punch it down. Knead it again for another 3-4 minutes, then cut into eight pieces.
On a floured board, flatten out each piece into a round (about 5 mm / 1/2 inch thick) . Do not open the oven door while the bread is baking.
Each bread should puff up, leaving a pocket in the middle. Remove from the oven and cool slightly on a wire rack.with your hand or a rolling pin.
Transfer to a floured baking tray and bake in a preheated hot oven (220 degrees C/ 425 degrees F/ Gas mark 7) for 8-10 minutes."
recipe_10.rating = 4.2
recipe_10.prep_time = "2 hours"
recipe_10.user = users[4]
recipe_10.longitude = 26.8206
recipe_10.latitude = 30.8025
recipe_10.country_code = "EGY"
recipe_10.save!

# recipe 11
recipe_11.name = 'Sesame Rings'
recipe_11.era = "between 3800-3000 BC"
recipe_11.country = "Egypt"
recipe_11.instructions = "Mix the flour, salt, sugar and yeast in a large bowl and make a well in the centre.
Pour in the water and oil and gradually draw in the flour. Knead on a floured board for 15 minutes, or for 10 minutes in a food processor fitted with a dough hook.
Pour a little oil into a bowl, roll the dough in it and cover the bowl with a clean damp cloth or cling film.
Put in a warm place for 1 1/2 -2 hours or until the dough has almost doubled in size. Take the dough out of the bowl, 'knock back' or punch it down and knead again for a further 5 minutes.
Cut the dough in half and roll each half into a sausage shape that you can form into a ring with a diameter of about 20 cm/ 8 in, about 5 cm/ 2 in thick.
Lay the rings on an oiled baking tray. Beat the egg wtih 2 tbsp water and glaze the tops of the rings.
Sprinkle generously with sesame seeds and bake in a preheated hot oven (220 degrees C/ 425 degrees F/ Gas Mark 7) for 10 minutes, then reduce the heat to 150 degrees C/ 300 degrees F/ Gas Mark 23 for a further 15 minutes.
Remove from oven and cool on a wire rack."
recipe_11.rating = 4.9
recipe_11.prep_time = "2 hours"
recipe_11.user = users[5]
recipe_11.longitude = 26.8206
recipe_11.latitude = 30.8025
recipe_11.country_code = "EGY"
recipe_11.save!

# recipe 12
recipe_12.name = 'First-Century AD Yoghurt'
recipe_12.era = "0-100 AD"
recipe_12.country = "Israel - Biblical Times"
recipe_12.instructions = "Pour the milk into a saucepan and bring to 180° in order to scald.
Remove from the heat, pour into a glass bowl, and allow it to cool to a warm temperature (110°).
Stir in 1 tablespoon of unpasteurized plain yoghurt. Cover with a kitchen towel and place in a warm location, such as the oven of a gas stove or in an electric oven that has been preheated for only 1 minute.
Do not disturb the yogurt and allow it to stand for 10–12 hours. Then refrigerate your yogurt and eat it cool."
recipe_12.rating = 4.1
recipe_12.prep_time = "5 mins, 10-12 hours of resting"
recipe_12.user = users[3]
recipe_12.longitude = 31.0461
recipe_12.latitude = 34.8516
recipe_12.country_code = "ISR"
recipe_12.save!

# recipe 13
recipe_13.name = 'Ancient Yoghurt Cheese'
recipe_13.era = "0-100 AD"
recipe_13.country = "Israel - Biblical Times"
recipe_13.instructions = "You will need cheesecloth, string, a colander, and a bowl to make yogurt cheese.
Cut a large piece of cheesecloth and place it in your colander. Spoon the yogurt in the center of the cheesecloth.
Pull the corners of the cheesecloth up over the yogurt and tie them together.
Hang the cheesecloth and yogurt over a bowl and let it drain for about 12 to 24 hours.
Refrigerate after it has finished draining."
recipe_13.rating = 4.7
recipe_13.prep_time = "5 mins, 12-24 hours resting"
recipe_13.user = users[4]
recipe_13.longitude = 31.0461
recipe_13.latitude = 34.8516
recipe_13.country_code = "ISR"
recipe_13.save!

# recipe 14
recipe_14.name = 'Blaunche escrepes (White Pancakes)'
recipe_14.era = "13th century AD"
recipe_14.country = "Medieval - England"
recipe_14.instructions = "Beat the egg whites until fluffy; beat in enough flour to make a slightly thick batter.
Beat in enough wine to thin the batter to a medium consistency, the same as for modern pancake batter. Add a pinch of salt.
In a large skillet or pan, heat the oil or butter.
The medieval recipe has the batter being dropped into the hot oil by use of an improvised funnel, a bowl with a hole in the bottom, the flow controlled by the fingers.
You may feel free to use whatever method of making pancakes that you're familiar or comfortable with: ladling from a bowl, pouring from a pitcher, using a modern pancake batter dispenser, etc.
Make as many pancakes as your batter will allow, adding more oil to the pan as needed.
Turn the pancake to cook both sides, being careful that, like modern crepes, they stay as white as possible.
When done, sprinkle with sugar."
recipe_14.rating = 4.9
recipe_14.prep_time = "15 min"
recipe_14.user = users[2]
recipe_14.longitude = 52.3555
recipe_14.latitude = 1.1743
recipe_14.country_code = "GBR"
recipe_14.save!

# recipe 15
recipe_15.name = "Poume d'Oranges"
recipe_15.era = "13th century AD"
recipe_15.country = "Medieval - England"
recipe_15.instructions = "Combine the pork and egg yolks into a malleable mass - use approx. 4-5 egg yolks for every pound of meat.
(Since modern tastes prefer salt & pepper, you may add these at this time if you wish.) The mixture should be the proper consistency with which to make meatballs.
Bring the broth to a soft boil.
Have a bowl of egg whites next to you while you make the meatballs. Dip your hands in the egg white before making each ball, which should be the size of an orange, or an oingnun, an onion.
Or, if you prefer, make the meatballs and dip each one in the egg white just before boiling.
Gently boil the meatballs in the broth until just done. Remove and drain.
If it is possible for you to spit roast the meatballs, in a rotisserie or a modern oven, then do so, placing the meat on your skewers, leaving a slight gap between each ball -  they must not be touching or you will have difficulty in thoroughly coloring them later on.
Roast until they are just beginning to brown.
If you cannot spit roast, place the meatballs on a baking sheet and roast in an oven until they are just beginning to brown.
Thoroughly coat the meatballs in egg white. If using skewers, either dip & roll them in egg white, still on the skewer, or use a pastry brush to paint on the egg; if using a baking sheet, dip each meatball in egg or use a pastry brush.
Return to the heat just long enough for the egg white to set and turn white; this will take only half a minute or so. DO not overcook the white, as it will turn brown. This makes the inner white coating of the orange peel.
Now coat the meatballs in the egg yolk, the same manner in which you did the whites. (For a brighter, deeper orange color, add a few drops of yellow food coloring to the yolks.)
Return to the heat just long enough for the egg yolk to set; again, this will take only half a minute or so. DO not overcook, as the yolk will turn brown and spoil the effect.
Remove the 'oranges' from the skewers or baking sheets, sprinkle on a little sugar, & serve."
recipe_15.rating = 3.2
recipe_15.prep_time = "30 min"
recipe_15.user = users[5]
recipe_15.longitude = 52.3555
recipe_15.latitude = 1.1743
recipe_15.country_code = "GBR"
recipe_15.save!

# recipe 16
recipe_16.name = "Crispels"
recipe_16.era = "14th century AD"
recipe_16.country = "Medieval - England"
recipe_16.instructions = "Roll out the pastry as thin as possible; cut into circles. Fry the pastry in a little olive oil until lightly brown & crisp. Drain well. Place the honey in a saucepan and slowly bring to a boil, skimming off any scum that rises.
Brush the pastries with the hot honey and serve forth!"
recipe_16.rating = 4.2
recipe_16.prep_time = "10 min"
recipe_16.user = users[1]
recipe_16.longitude = 52.3555
recipe_16.latitude = 1.1743
recipe_16.country_code = "GBR"
recipe_16.save!

# recipe 17
recipe_17.name = "Frytour blaunched"
recipe_17.era = "14th century AD"
recipe_17.country = "Medieval - England"
recipe_17.instructions = "Mix almonds with sugar, ginger, and a little salt - this should be a sweet, slightly spicy blend. Roll out the pastry dough.
You may now make the pastry several different ways: by cutting out circles of dough, placing filling in the middle, and folding into a half-circle; by cutting out circles, squares, or triangles of pastry, placing filling in the middle of one piece and then covering with another piece of dough and sealing the edges; or by making small stuffed squares or rectangles, egg-roll style. In any case, make sure the edges of the pastry(ies) are securely sealed. Fry the pastry(ies) in hot oil until lightly browned; remove from oil and let drain. In a pot, bring the honey to a soft boil, then reduce heat. Skim off the scum as it rises. Add just enough wine to make a thick sauce. Thoroughly coat the pasty(ies) in the wine sauce, then place on a baking sheet. Bake in a hot oven for several minutes.
The pastry(ies) may be basted with additional sauce during baking or immediately afterward."
recipe_17.rating = 4.7
recipe_17.prep_time = "20 min"
recipe_17.user = users[0]
recipe_17.longitude = 52.3555
recipe_17.latitude = 1.1743
recipe_17.country_code = "GBR"
recipe_17.save!

# recipe 18
recipe_18.name = "First-Century Chicken Stock"
recipe_18.era = "1st century AD"
recipe_18.country = "Israel - Biblical Times"
recipe_18.instructions = "Place all ingredients in a 12-quart stock pot. Cover with water by 2 inches and bring to a boil. Immediately turn down to a simmer and cook for 1 hour.
Use a spoon to scrape out any fat or foam that rises to the surface. After 1 hour, take the chicken pieces from the pot and carefully remove the chicken meat from the bones. It will be hot.
Save the chicken for another use. Crack the bones with a meat cleaver and return the bones to the stock. Continue to cook for several hours, scraping any fat or foam that rises to the surface.
Partially fill a sink with water and ice. Strain the stock into a large bowl or pot. Place in the ice water until temperature is reduced. Then place in a covered container and refrigerate."
recipe_18.rating = 4.2
recipe_18.prep_time = "1 hour first cooking, few more hours to finish the cooking process"
recipe_18.user = users[2]
recipe_18.longitude = 31.0461
recipe_18.latitude = 34.8516
recipe_18.country_code = "ISR"
recipe_18.save!

# recipe 19
recipe_19.name = "Benes yfryed"
recipe_19.era = "14th century AD"
recipe_19.country = "Medieval - England"
recipe_19.instructions = "Boil beans until tender; remove from water and drain well. Boil whole peeled onions until tender; remove from water and drain well.
Mince the onion and garlic and combine with beans. Fry in hot oil; remove from oil and drain. Place in serving dish and sprinkle on powder douce to season. Serve it forth!"
recipe_19.rating = 4.8
recipe_19.prep_time = "45 min to 1 hour"
recipe_19.user = users[5]
recipe_19.longitude = 52.3555
recipe_19.latitude = 1.1743
recipe_19.country_code = "GBR"
recipe_19.save!

# recipe 20
recipe_20.name = "Blancmanger"
recipe_20.era = "14th century AD"
recipe_20.country = "Medieval - France"
recipe_20.instructions = "Boil chicken until very tender and allow to cool. Tease meat apart with forks until well shredded.
Put meat into a large pot with remaining ingredients and cook over medium heat until thick. Serve hot."
recipe_20.rating = 3.9
recipe_20.prep_time = "40 min to 1 hour"
recipe_20.user = users[3]
recipe_20.longitude = 46.2276
recipe_20.latitude = 2.2137
recipe_20.country_code = "FRA"
recipe_20.save!

# recipe 21
recipe_21.name = "Grave of Small Birds"
recipe_21.era = "14th century AD"
recipe_21.country = "Medieval - France"
recipe_21.instructions = "Place all ingredients in a large pot. Bring to a boil, then simmer until done - about 20 minutes."
recipe_21.rating = 2.5
recipe_21.prep_time = "30 min"
recipe_21.user = users[4]
recipe_21.longitude = 46.2276
recipe_21.latitude = 2.2137
recipe_21.country_code = "FRA"
recipe_21.save!

# recipe 22
recipe_22.name = "Cinnamon Soup"
recipe_22.era = "14th century AD"
recipe_22.country = "Medieval - France"
recipe_22.instructions = "Cut chicken into small pieces and sautee in butter until it starts to brown.
Add remaining ingredients, bring to a boil, and simmer until thick. Serve hot."
recipe_22.rating = 4.7
recipe_22.prep_time = "30 to 45 min"
recipe_22.user = users[0]
recipe_22.longitude = 46.2276
recipe_22.latitude = 2.2137
recipe_22.country_code = "FRA"
recipe_22.save!

# recipe 23
recipe_23.name = "Spinach Tart"
recipe_23.era = "14th century AD"
recipe_23.country = "Medieval - France"
recipe_23.instructions = "Wash spinach and parsley, and chop them well.
Beat eggs in a large bowl, add greens and remaining ingredients, and mix well.
Pour into pie crust and bake at 350°F until firm - about an hour."
recipe_23.rating = 4.5
recipe_23.prep_time = "1h 10 min"
recipe_23.user = users[1]
recipe_23.longitude = 46.2276
recipe_23.latitude = 2.2137
recipe_23.country_code = "FRA"
recipe_23.save!

# recipe 24
recipe_24.name = "Powder Fine"
recipe_24.era = "14th century AD"
recipe_24.country = "Medieval - France"
recipe_24.instructions = "Many medieval recipes call for spice mixtures without detailing the exact spices. While it is tempting to assume that each particular spice mixture had a consistent recipe, there is evidence of substantial variation for different times, regions, budgets, and cooks.
This recipe is for one of the more commonly called for spice mixtures.
I strongly encourage altering it to suite your own tastes."
recipe_24.rating = 5
recipe_24.prep_time = "3 min"
recipe_24.user = users[2]
recipe_24.longitude = 46.2276
recipe_24.latitude = 2.2137
recipe_24.country_code = "FRA"
recipe_24.save!

# recipe 25
recipe_25.name = "Ova Sponga ex Lacte - Eggs with Honey"
recipe_25.era = "1st - 2nd century AD"
recipe_25.country = "Roman"
recipe_25.instructions = "Beat well the eggs and mix with the milk and a bit of olive oil.
Pour olive oil in a pan. When it is hot, add a ladle of the egg mixture. Cook the ova spongia until they are done, without turning them.
Plate the omelettes coating them with honey and dusting with ground pepper."
recipe_25.rating = 4.5
recipe_25.prep_time = "10 min"
recipe_25.user = users[3]
recipe_25.longitude = 41.8719
recipe_25.latitude = 12.5674
recipe_25.country_code = "ITA"
recipe_25.save!

# recipe 26
recipe_26.name = "Inca Salad"
recipe_26.era = "1438 - 1533 AD"
recipe_26.country = "Incan"
recipe_26.instructions = "Combine all ingredients.
Serve with the bottle of hot sauce on the side, so each diner can add more heat to his or her taste."
recipe_26.rating = 4.1
recipe_26.prep_time = "8 min"
recipe_26.user = users[4]
recipe_26.longitude = 9.1900
recipe_26.latitude = 75.0152
recipe_26.country_code = "PER"
recipe_26.save!

# recipe 27
recipe_27.name = "Ancient Roman Mussels"
recipe_27.era = "1st - 2nd century AD"
recipe_27.country = "Roman"
recipe_27.instructions = "Cut the leek without mincing it overly.
Put the mussels into a hot pot and add the leek, wine, passito, garum, savory, and whole cumin seeds.
The author suggests to mix it with water. Don’t use too much garum (fish sauce), because usually, mussels are rather salted.
You can add more at the end of the cooking. In a few minutes, the dish is ready."
recipe_27.rating = 2.5
recipe_27.prep_time = "10 min"
recipe_27.user = users[5]
recipe_27.longitude = 41.8719
recipe_27.latitude = 12.5674
recipe_27.country_code = "ITA"
recipe_27.save!

# recipe 28
recipe_28.name = "Cominee"
recipe_28.era = "13th century AD"
recipe_28.country = "Medieval - French"
recipe_28.instructions = "Whisk ingredients together and cook over a low heat until it's just ready to boil. Serve hot."
recipe_28.rating = 4.5
recipe_28.prep_time = "10 min"
recipe_28.user = users[0]
recipe_28.longitude = 46.2276
recipe_28.latitude = 2.2137
recipe_28.country_code = "FRA"
recipe_28.save!

# recipe = name, era, country, instructions, rating, prep_time
puts "Recipes: "
puts recipe_1.name
puts recipe_2.name
puts recipe_3.name
puts recipe_4.name
puts recipe_5.name
puts recipe_6.name
puts recipe_7.name
puts recipe_8.name
puts recipe_9.name
puts recipe_10.name
puts recipe_11.name
puts recipe_12.name
puts recipe_13.name
puts recipe_14.name
puts recipe_15.name
puts recipe_16.name
puts recipe_17.name
puts recipe_18.name
puts recipe_19.name
puts recipe_20.name
puts recipe_21.name
puts recipe_22.name
puts recipe_23.name
puts recipe_24.name
puts recipe_25.name
puts recipe_26.name
puts recipe_27.name
puts recipe_28.name

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
barley_flour = Ingredient.create!(name: "barley flour")
milk = Ingredient.create!(name: "milk")
date_syrup = Ingredient.create!(name: "date syrup")
date = Ingredient.create!(name: "date")
raisin = Ingredient.create!(name: "raisin")
fennel = Ingredient.create!(name: "fennel")
anise = Ingredient.create!(name: "anise")
cottage_cheese = Ingredient.create!(name: "cottage cheese")
butter = Ingredient.create!(name: "butter")
dried_fig = Ingredient.create!(name: "dried fig")
dried_sour_cherry = Ingredient.create!(name: "dried sour cherry")
dried_apricot = Ingredient.create!(name: "dried apricot")
pomegranate_molasses = Ingredient.create!(name: "pomegranate molasses")
spelt_flour = Ingredient.create!(name: "spelt flour")
dried_yeast = Ingredient.create!(name: "dried yeast")
sugar = Ingredient.create!(name: "sugar")
sesame_seeds = Ingredient.create!(name: "sesame seeds")
white_bread_flour = Ingredient.create!(name: "white bread flour")
yoghurt = Ingredient.create!(name: "yoghurt")
egg_whites = Ingredient.create!(name: "egg whites")
white_wine = Ingredient.create!(name: "white wine")
white_flour = Ingredient.create!(name: "white flour")
pork = Ingredient.create!(name: "pork")
egg_yolks = Ingredient.create!(name: "egg yolkes")
broth = Ingredient.create!(name: "broth")
pastry_dough = Ingredient.create!(name: "pastry dough")
almonds = Ingredient.create!(name: "almonds")
ginger_powder = Ingredient.create!(name: "ginger powder")
red_wine = Ingredient.create!(name: "red wine")
onion = Ingredient.create!(name: "onion")
carrot = Ingredient.create!(name: "carrot")
celery = Ingredient.create!(name: "celery")
chicken = Ingredient.create!(name: "chicken")
thyme = Ingredient.create!(name: "thyme")
parsley = Ingredient.create!(name: "parsley")
beans = Ingredient.create!(name: "beans")
garlic = Ingredient.create!(name: "garlic")
powder_douce = Ingredient.create!(name: "powder douce")
white_rice = Ingredient.create!(name: "white rice")
almond_milk = Ingredient.create!(name: "almond milk")
ginger = Ingredient.create!(name: "ginger")
white_pepper = Ingredient.create!(name: "white pepper")
chicken_thighs = Ingredient.create!(name: "chicken thighs")
bacon_pieces = Ingredient.create!(name: "bacon pieces")
cinnamon = Ingredient.create!(name: "cinnamon")
cloves = Ingredient.create!(name: "cloves")
grains_of_paradise = Ingredient.create!(name: "grains of paradise")
cooked_chicken = Ingredient.create!(name: "cooked chicken")
chicken_broth = Ingredient.create!(name: "chicken broth")
spinach = Ingredient.create!(name: "spinach")
mozzarella = Ingredient.create!(name: "mozzarella")
parmesan = Ingredient.create!(name: "parmesan")
chervil = Ingredient.create!(name: "chervil")
powder_fine = Ingredient.create!(name: "powder fine")
pepper = Ingredient.create!(name: "pepper")
quinoa = Ingredient.create!(name: "quinoa")
frozen_corn = Ingredient.create!(name: "frozen corn")
pink_beans = Ingredient.create!(name: "pink beans")
tomatoes = Ingredient.create!(name: "tomato")
green_onion = Ingredient.create!(name: "green onion")
cilantro = Ingredient.create!(name: "cilantro")
lemon_juice = Ingredient.create!(name: "lemon juice")
cumin = Ingredient.create!(name: "cumin")
mussels = Ingredient.create!(name: "mussels")
leek = Ingredient.create!(name: "leek")
savory = Ingredient.create!(name: "savory")
dry_white_wine = Ingredient.create!(name: "dry white wine")
passito = Ingredient.create!(name: "passito")

# Let's create Recipes Ingredients
RecipesIngredient.create!(recipe: recipe_1, ingredient: cabbage, quantity: "1 small")
RecipesIngredient.create!(recipe: recipe_1, ingredient: coriander, quantity: "2 heaped tsp")
RecipesIngredient.create!(recipe: recipe_1, ingredient: powder, quantity: "2 tsp")
RecipesIngredient.create!(recipe: recipe_1, ingredient: rue, quantity: "2 pinches")
RecipesIngredient.create!(recipe: recipe_1, ingredient: salt)

RecipesIngredient.create!(recipe: recipe_2, ingredient: prawns, quantity: "225 g" )
RecipesIngredient.create!(recipe: recipe_2, ingredient: olive_oil, quantity: "1 tbsp")
RecipesIngredient.create!(recipe: recipe_2, ingredient: fish_sauce, quantity: "2 tbsp")
RecipesIngredient.create!(recipe: recipe_2, ingredient: honey, quantity: "1 tbsp")
RecipesIngredient.create!(recipe: recipe_2, ingredient: oregano, quantity: "2 tbsp")
RecipesIngredient.create!(recipe: recipe_2, ingredient: black_pepper)

RecipesIngredient.create!(recipe: recipe_3, ingredient: flour, quantity: "14 oz")
RecipesIngredient.create!(recipe: recipe_3, ingredient: water, quantity: "1 cup")
RecipesIngredient.create!(recipe: recipe_3, ingredient: salt, quantity: "1/2 teaspoon")

RecipesIngredient.create!(recipe: recipe_4, ingredient: flour, quantity: "120 g")
RecipesIngredient.create!(recipe: recipe_4, ingredient: water, quantity: "225 ml")
RecipesIngredient.create!(recipe: recipe_4, ingredient: honey, quantity: "2 tbsp")
RecipesIngredient.create!(recipe: recipe_4, ingredient: oil, quantity: "enough for frying")
RecipesIngredient.create!(recipe: recipe_4, ingredient: seeds, quantity: "1 tbsp")

RecipesIngredient.create!(recipe: recipe_5, ingredient: flour, quantity: "90 g")
RecipesIngredient.create!(recipe: recipe_5, ingredient: cheese, quantity: "250 g")
RecipesIngredient.create!(recipe: recipe_5, ingredient: egg, quantity: "1")
RecipesIngredient.create!(recipe: recipe_5, ingredient: bay_leaves, quantity: "2")
RecipesIngredient.create!(recipe: recipe_5, ingredient: honey, quantity: "2 tbsp")

RecipesIngredient.create!(recipe: recipe_6, ingredient: flour, quantity: "60 g")
RecipesIngredient.create!(recipe: recipe_6, ingredient: water, quantity: "170 ml")
RecipesIngredient.create!(recipe: recipe_6, ingredient: olive_oil, quantity: "enough for deep-frying")
RecipesIngredient.create!(recipe: recipe_6, ingredient: black_pepper)
RecipesIngredient.create!(recipe: recipe_6, ingredient: honey, quantity: "2 tbsp")

RecipesIngredient.create!(recipe: recipe_7, ingredient: milk, quantity: "2 cups")
RecipesIngredient.create!(recipe: recipe_7, ingredient: water, quantity: "2 cups")
RecipesIngredient.create!(recipe: recipe_7, ingredient: barley_flour, quantity: "3/4 tbsp")
RecipesIngredient.create!(recipe: recipe_7, ingredient: salt, quantity: "to taste")
RecipesIngredient.create!(recipe: recipe_7, ingredient: date_syrup, quantity: "to taste")
RecipesIngredient.create!(recipe: recipe_7, ingredient: date, quantity: "1 cup")

RecipesIngredient.create!(recipe: recipe_8, ingredient: date, quantity: "3 cups")
RecipesIngredient.create!(recipe: recipe_8, ingredient: raisin, quantity: "1/3 cup")
RecipesIngredient.create!(recipe: recipe_8, ingredient: fennel, quantity: "2 teaspoons")
RecipesIngredient.create!(recipe: recipe_8, ingredient: anise, quantity: "2 teaspoons")
RecipesIngredient.create!(recipe: recipe_8, ingredient: cottage_cheese, quantity: "1/3 cup")
RecipesIngredient.create!(recipe: recipe_8, ingredient: butter, quantity: "1 cup ")
RecipesIngredient.create!(recipe: recipe_8, ingredient: egg, quantity: "2")
RecipesIngredient.create!(recipe: recipe_8, ingredient: milk, quantity: "2/3 cups")
RecipesIngredient.create!(recipe: recipe_8, ingredient: flour, quantity: "1 1/2 cups")

RecipesIngredient.create!(recipe: recipe_9, ingredient: water, quantity: "as needed to cover dried fruits")
RecipesIngredient.create!(recipe: recipe_9, ingredient: dried_fig, quantity: "1/2 cup")
RecipesIngredient.create!(recipe: recipe_9, ingredient: dried_sour_cherry, quantity: "1/2 cup")
RecipesIngredient.create!(recipe: recipe_9, ingredient: dried_apricot, quantity: "3/4 cup")
RecipesIngredient.create!(recipe: recipe_9, ingredient: pomegranate_molasses, quantity: "2 tbsp")
RecipesIngredient.create!(recipe: recipe_9, ingredient: date_syrup, quantity: "2 tbsp")

RecipesIngredient.create!(recipe: recipe_10, ingredient: spelt_flour, quantity: "500 g")
RecipesIngredient.create!(recipe: recipe_10, ingredient: salt, quantity: "1/2 tsp")
RecipesIngredient.create!(recipe: recipe_10, ingredient: dried_yeast, quantity: "7 g")
RecipesIngredient.create!(recipe: recipe_10, ingredient: water, quantity: "300 ml")

RecipesIngredient.create!(recipe: recipe_11, ingredient: white_bread_flour, quantity: "500 g")
RecipesIngredient.create!(recipe: recipe_11, ingredient: salt, quantity: "1/2 tsp")
RecipesIngredient.create!(recipe: recipe_11, ingredient: sugar, quantity: "1 tsp")
RecipesIngredient.create!(recipe: recipe_11, ingredient: dried_yeast, quantity: "7 g")
RecipesIngredient.create!(recipe: recipe_11, ingredient: water, quantity: "300 ml")
RecipesIngredient.create!(recipe: recipe_11, ingredient: olive_oil, quantity: "2 tbsp")
RecipesIngredient.create!(recipe: recipe_11, ingredient: egg, quantity: "1 egg")
RecipesIngredient.create!(recipe: recipe_11, ingredient: sesame_seeds, quantity: "for sprinkling")

RecipesIngredient.create!(recipe: recipe_12, ingredient: yoghurt, quantity: "1 tbsp")
RecipesIngredient.create!(recipe: recipe_12, ingredient: milk, quantity: "1 quart")

RecipesIngredient.create!(recipe: recipe_13, ingredient: yoghurt, quantity: "2 cups")

RecipesIngredient.create!(recipe: recipe_14, ingredient: white_flour)
RecipesIngredient.create!(recipe: recipe_14, ingredient: egg_whites)
RecipesIngredient.create!(recipe: recipe_14, ingredient: white_wine)
RecipesIngredient.create!(recipe: recipe_14, ingredient: salt)
RecipesIngredient.create!(recipe: recipe_14, ingredient: butter)
RecipesIngredient.create!(recipe: recipe_14, ingredient: sugar)
RecipesIngredient.create!(recipe: recipe_14, ingredient: oil)

RecipesIngredient.create!(recipe: recipe_15, ingredient: pork, quantity: "raw")
RecipesIngredient.create!(recipe: recipe_15, ingredient: egg_yolks, quantity: "slightly beaten")
RecipesIngredient.create!(recipe: recipe_15, ingredient: egg_whites, quantity: "slightly beaten")
RecipesIngredient.create!(recipe: recipe_15, ingredient: salt, quantity: "to taste")
RecipesIngredient.create!(recipe: recipe_15, ingredient: broth, quantity: "any sort")

RecipesIngredient.create!(recipe: recipe_16, ingredient: pastry_dough)
RecipesIngredient.create!(recipe: recipe_16, ingredient: olive_oil)
RecipesIngredient.create!(recipe: recipe_16, ingredient: honey)

RecipesIngredient.create!(recipe: recipe_17, ingredient: almonds)
RecipesIngredient.create!(recipe: recipe_17, ingredient: ginger_powder)
RecipesIngredient.create!(recipe: recipe_17, ingredient: sugar)
RecipesIngredient.create!(recipe: recipe_17, ingredient: salt)
RecipesIngredient.create!(recipe: recipe_17, ingredient: pastry_dough)
RecipesIngredient.create!(recipe: recipe_17, ingredient: oil)
RecipesIngredient.create!(recipe: recipe_17, ingredient: honey)
RecipesIngredient.create!(recipe: recipe_17, ingredient: red_wine)

RecipesIngredient.create!(recipe: recipe_18, ingredient: onion, quantity: "1m roughly chopped")
RecipesIngredient.create!(recipe: recipe_18, ingredient: carrot, quantity: "1, roughly chopped")
RecipesIngredient.create!(recipe: recipe_18, ingredient: celery, quantity: "1, roughly chopped")
RecipesIngredient.create!(recipe: recipe_18, ingredient: chicken, quantity: "1, cut into 8 pieces")
RecipesIngredient.create!(recipe: recipe_18, ingredient: thyme, quantity: "2 sprigs")
RecipesIngredient.create!(recipe: recipe_18, ingredient: parsley, quantity: "2 sprigs")
RecipesIngredient.create!(recipe: recipe_18, ingredient: bay_leaves, quantity: "1")

RecipesIngredient.create!(recipe: recipe_19, ingredient: beans)
RecipesIngredient.create!(recipe: recipe_19, ingredient: onion)
RecipesIngredient.create!(recipe: recipe_19, ingredient: garlic)
RecipesIngredient.create!(recipe: recipe_19, ingredient: olive_oil)
RecipesIngredient.create!(recipe: recipe_19, ingredient: powder_douce)

RecipesIngredient.create!(recipe: recipe_20, ingredient: chicken, quantity: "1 pound")
RecipesIngredient.create!(recipe: recipe_20, ingredient: white_rice, quantity: "4 cups cooked")
RecipesIngredient.create!(recipe: recipe_20, ingredient: almond_milk, quantity: "1/2 cup")
RecipesIngredient.create!(recipe: recipe_20, ingredient: water, quantity: "1 cup")
RecipesIngredient.create!(recipe: recipe_20, ingredient: sugar, quantity: "2 tbsp")
RecipesIngredient.create!(recipe: recipe_20, ingredient: salt, quantity: "1/2 tbsp")
RecipesIngredient.create!(recipe: recipe_20, ingredient: ginger, quantity: "1/4 tbsp")
RecipesIngredient.create!(recipe: recipe_20, ingredient: white_pepper, quantity: "1/8 tsp")

RecipesIngredient.create!(recipe: recipe_21, ingredient: chicken_thighs, quantity: "1 lb")
RecipesIngredient.create!(recipe: recipe_21, ingredient: red_wine, quantity: "1/2 cup")
RecipesIngredient.create!(recipe: recipe_21, ingredient: water, quantity: "1/2 cup")
RecipesIngredient.create!(recipe: recipe_21, ingredient: bacon_pieces, quantity: "1/4 cooked")
RecipesIngredient.create!(recipe: recipe_21, ingredient: salt, quantity: "1/2 tsp")
RecipesIngredient.create!(recipe: recipe_21, ingredient: pepper, quantity: "1/4 tsp")
RecipesIngredient.create!(recipe: recipe_21, ingredient: ginger, quantity: "1/4 tsp")

RecipesIngredient.create!(recipe: recipe_22, ingredient: cooked_chicken, quantity: "1 cup")
RecipesIngredient.create!(recipe: recipe_22, ingredient: butter, quantity: "1 tbsp")
RecipesIngredient.create!(recipe: recipe_22, ingredient: chicken_broth, quantity: "2 cups")
RecipesIngredient.create!(recipe: recipe_22, ingredient: almonds, quantity: "1/2 cups")
RecipesIngredient.create!(recipe: recipe_22, ingredient: cinnamon, quantity: "1 tbsp")
RecipesIngredient.create!(recipe: recipe_22, ingredient: ginger, quantity: "1/4 tsp")
RecipesIngredient.create!(recipe: recipe_22, ingredient: cloves, quantity: "1/8 tsp")
RecipesIngredient.create!(recipe: recipe_22, ingredient: grains_of_paradise, quantity: "1/8 tsp")
RecipesIngredient.create!(recipe: recipe_22, ingredient: salt, quantity: "1/4 tsp")

RecipesIngredient.create!(recipe: recipe_23, ingredient: spinach, quantity: "1/2 pound")
RecipesIngredient.create!(recipe: recipe_23, ingredient: parsley, quantity: "1/2 cup")
RecipesIngredient.create!(recipe: recipe_23, ingredient: egg, quantity: "6")
RecipesIngredient.create!(recipe: recipe_23, ingredient: mozzarella, quantity: "2 cups")
RecipesIngredient.create!(recipe: recipe_23, ingredient: parmesan, quantity: "1/2 cup")
RecipesIngredient.create!(recipe: recipe_23, ingredient: chervil, quantity: "1 tsp")
RecipesIngredient.create!(recipe: recipe_23, ingredient: fennel, quantity: "1 tsp")
RecipesIngredient.create!(recipe: recipe_23, ingredient: powder_fine, quantity: "1 tsp")

RecipesIngredient.create!(recipe: recipe_24, ingredient: ginger, quantity: "3 tbsp")
RecipesIngredient.create!(recipe: recipe_24, ingredient: sugar, quantity: "2 tbsp")
RecipesIngredient.create!(recipe: recipe_24, ingredient: cinnamon, quantity: "1 1/2 tbsp")
RecipesIngredient.create!(recipe: recipe_24, ingredient: cloves, quantity: "1 tsp")
RecipesIngredient.create!(recipe: recipe_24, ingredient: grains_of_paradise, quantity: "1 tsp")

RecipesIngredient.create!(recipe: recipe_25, ingredient: egg, quantity: "4")
RecipesIngredient.create!(recipe: recipe_25, ingredient: milk, quantity: "250 ml")
RecipesIngredient.create!(recipe: recipe_25, ingredient: olive_oil, quantity: "25 gr")
RecipesIngredient.create!(recipe: recipe_25, ingredient: honey)
RecipesIngredient.create!(recipe: recipe_25, ingredient: black_pepper)

RecipesIngredient.create!(recipe: recipe_26, ingredient: quinoa, quantity: "2 cups")
RecipesIngredient.create!(recipe: recipe_26, ingredient: frozen_corn, quantity: "1 cup")
RecipesIngredient.create!(recipe: recipe_26, ingredient: pink_beans, quantity: "1 can")
RecipesIngredient.create!(recipe: recipe_26, ingredient: tomatoes, quantity: "1")
RecipesIngredient.create!(recipe: recipe_26, ingredient: green_onion, quantity: "1")
RecipesIngredient.create!(recipe: recipe_26, ingredient: cilantro, quantity: "1/4 cup")
RecipesIngredient.create!(recipe: recipe_26, ingredient: lemon_juice, quantity: "2 tbsp")
RecipesIngredient.create!(recipe: recipe_26, ingredient: cumin, quantity: "1 tsp")

RecipesIngredient.create!(recipe: recipe_27, ingredient: mussels, quantity: "500 g")
RecipesIngredient.create!(recipe: recipe_27, ingredient: leek, quantity: "1/3 leek")
RecipesIngredient.create!(recipe: recipe_27, ingredient: savory)
RecipesIngredient.create!(recipe: recipe_27, ingredient: cumin)
RecipesIngredient.create!(recipe: recipe_27, ingredient: fish_sauce, quantity: "1 tbsp")
RecipesIngredient.create!(recipe: recipe_27, ingredient: dry_white_wine, quantity: "100 ml")
RecipesIngredient.create!(recipe: recipe_27, ingredient: passito, quantity: "50 ml")

RecipesIngredient.create!(recipe: recipe_28, ingredient: chicken_broth, quantity: "1 cup")
RecipesIngredient.create!(recipe: recipe_28, ingredient: egg_yolks, quantity: "2")
RecipesIngredient.create!(recipe: recipe_28, ingredient: ginger, quantity: "1/2 tsp")
RecipesIngredient.create!(recipe: recipe_28, ingredient: cumin, quantity: "1/4 tsp")

puts RecipesIngredient.all

# User favorites
UserFavorite.create!(user: users[0], recipe: recipe_1)
UserFavorite.create!(user: users[0], recipe: recipe_3)
UserFavorite.create!(user: users[0], recipe: recipe_5)
UserFavorite.create!(user: users[0], recipe: recipe_17)
UserFavorite.create!(user: users[0], recipe: recipe_22)
UserFavorite.create!(user: users[0], recipe: recipe_28)

UserFavorite.create!(user: users[1], recipe: recipe_1)
UserFavorite.create!(user: users[1], recipe: recipe_2)
UserFavorite.create!(user: users[1], recipe: recipe_9)
UserFavorite.create!(user: users[1], recipe: recipe_16)
UserFavorite.create!(user: users[1], recipe: recipe_23)

UserFavorite.create!(user: users[2], recipe: recipe_2)
UserFavorite.create!(user: users[2], recipe: recipe_4)
UserFavorite.create!(user: users[2], recipe: recipe_6)
UserFavorite.create!(user: users[2], recipe: recipe_8)
UserFavorite.create!(user: users[2], recipe: recipe_14)
UserFavorite.create!(user: users[2], recipe: recipe_18)
UserFavorite.create!(user: users[2], recipe: recipe_24)


UserFavorite.create!(user: users[3], recipe: recipe_4)
UserFavorite.create!(user: users[3], recipe: recipe_7)
UserFavorite.create!(user: users[3], recipe: recipe_12)
UserFavorite.create!(user: users[3], recipe: recipe_20)
UserFavorite.create!(user: users[3], recipe: recipe_25)

UserFavorite.create!(user: users[4], recipe: recipe_1)
UserFavorite.create!(user: users[4], recipe: recipe_3)
UserFavorite.create!(user: users[4], recipe: recipe_6)
UserFavorite.create!(user: users[4], recipe: recipe_10)
UserFavorite.create!(user: users[4], recipe: recipe_13)
UserFavorite.create!(user: users[4], recipe: recipe_21)
UserFavorite.create!(user: users[4], recipe: recipe_26)

UserFavorite.create!(user: users[5], recipe: recipe_5)
UserFavorite.create!(user: users[5], recipe: recipe_6)
UserFavorite.create!(user: users[5], recipe: recipe_11)
UserFavorite.create!(user: users[5], recipe: recipe_15)
UserFavorite.create!(user: users[5], recipe: recipe_19)
UserFavorite.create!(user: users[5], recipe: recipe_27)


puts UserFavorite.all

# Add photo to recipes
p1 = URI.open('https://ohmydish.com/wp-content/uploads/2020/01/Greek-cabbage-salad.jpg')
recipe_1.photo.attach(io: p1, filename: 'cabbage.jpg', content_type: 'image/jpg')
p2 = URI.open('https://vikalinka.com/wp-content/uploads/2021/05/Honey-Garlic-Shrimp-5-Edit.jpg')
recipe_2.photo.attach(io: p2, filename: 'prawns.jpg', content_type: 'image/jpg')
p3 = URI.open('https://www.mygreekdish.com/wp-content/uploads/2020/05/Greek-Bread-recipe-Village-bread-Horiatiko-Psomi-1536x1154.jpeg')
recipe_3.photo.attach(io: p3, filename: 'ancient-bread.jpg', content_type: 'image/jpg')
p4 = URI.open('http://cookingantiquity.weebly.com/uploads/2/3/9/6/23964588/9952635.jpeg')
recipe_4.photo.attach(io: p4, filename: 'pancake.jpg', content_type: 'image/jpg')
p5 = URI.open('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1833451.jpg')
recipe_5.photo.attach(io: p5, filename: 'cheesecake.jpg', content_type: 'image/jpg')
p6 = URI.open('https://cdn.compassclassroom.com/wp-content/uploads/20210226072917/resources_delian_P2180891.jpg')
recipe_6.photo.attach(io: p6, filename: 'delian-sweets.jpg', content_type: 'image/jpg')
p7 = URI.open('https://i.pinimg.com/564x/d9/d1/e9/d9d1e988c60de87c3c69a18975acffce.jpg')
recipe_7.photo.attach(io: p7, filename: 'sasqu.jpg', content_type: 'image/jpg')
p8 = URI.open('https://www.iraqicookbook.com/yahoo_site_admin/assets/images/fruit_cake_website.24134745_std.jpg')
recipe_8.photo.attach(io: p8, filename: 'palace-cake.jpg', content_type: 'image/jpg')
p9 = URI.open('https://www.thespruceeats.com/thmb/wsC6kWSrTCa7gbx75I5wEMt58hE=/2125x1195/smart/filters:no_upscale()/GettyImages-559151961-56a57c915f9b58b7d0dd25bf.jpg')
recipe_9.photo.attach(io: p9, filename: 'dried-fruit-compote.jpg', content_type: 'image/jpg')
p10 = URI.open('https://www.saveur.com/uploads/2019/02/08/X2ZI7DG6PNYH7YOK3UX22Y4VTY-1536x1152.jpg')
recipe_9.photo.attach(io: p10, filename: 'aish-baladi.jpg', content_type: 'image/jpg')
p11 = URI.open('https://365awitchesperspective.files.wordpress.com/2013/01/rings.jpg')
recipe_11.photo.attach(io: p11, filename: 'sesame-rings.jpg', content_type: 'image/jpg')
p12 = URI.open('https://cdn.manyeats.com/wp-content/uploads/2020/10/yogurt-spoon-cup.jpg')
recipe_12.photo.attach(io: p12, filename: 'ancient-yoghurt.jpg', content_type: 'image/jpg')
p13 = URI.open('https://www.thespruceeats.com/thmb/YRrkRFc3li-FeMfySgUsXS5vJWc=/940x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/homemade-yogurt-cheese-recipe-4117851-hero-01-099c0749eaa541f1b3c7667df88f2089.JPG')
recipe_13.photo.attach(io: p13, filename: 'ancient-yoghurt-cheese.jpg', content_type: 'image/jpg')
p14 = URI.open('https://cdn.coil.com/cdn-cgi/image/format=auto,fit=scale-down,w=1920/images/KqNvDVq1Rg-jKxW61DbEgg.jpg')
recipe_14.photo.attach(io: p14, filename: 'blaunche-escerpes.jpg', content_type: 'image/jpg')
p15 = URI.open('https://hyperleap.com/images/70a2e190fcba519b5a5fc2877eddc8c8%2F200-67c7bae3f536646911d0f1ab2ba19833.jpg')
recipe_15.photo.attach(io: p15, filename: 'poume-doranges.jpg', content_type: 'image/jpg')
p16 = URI.open('https://historydollop.files.wordpress.com/2017/06/img_3387.jpg')
recipe_16.photo.attach(io: p16, filename: 'crispels.jpg', content_type: 'image/jpg')
p17 = URI.open('https://i.pinimg.com/originals/48/63/e9/4863e975a70504cd9a8dbd2ff0883308.jpg')
recipe_17.photo.attach(io: p17, filename: 'frytour-blanched.jpg', content_type: 'image/jpg')
p18 = URI.open('https://static01.nyt.com/images/2017/01/11/dining/11SOUPS14/11SOUPS14-articleLarge.jpg')
recipe_18.photo.attach(io: p18, filename: 'chicken-stock', content_type: 'image/jpg')
p19 = URI.open('http://1.bp.blogspot.com/-2ZtIdQSrBWs/UCHORXhBA1I/AAAAAAAAA88/r-8D4w36pI4/s1600/edit-04327.jpg')
recipe_19.photo.attach(io: p19, filename: 'benes-yfryed', content_type: 'image/jpg')
p20 = URI.open('https://historydollop.files.wordpress.com/2019/11/847df68c-8b77-444c-b674-8ad631f2541a.jpg')
recipe_20.photo.attach(io: p20, filename: 'blancmanger', content_type: 'image/jpg')
p21 = URI.open('https://i.pinimg.com/originals/65/f3/8c/65f38cf79e1eed3caed68b14882806e9.jpg')
recipe_21.photo.attach(io: p21, filename: 'grave-of-small-birds', content_type: 'image/jpg')
p22 = URI.open('https://lotien.files.wordpress.com/2011/06/p11708572.jpg')
recipe_22.photo.attach(io: p22, filename: 'cinnamon-soup', content_type: 'image/jpg')
p23 = URI.open('https://i.redd.it/3qybb0h09fh81.jpg')
recipe_23.photo.attach(io: p23, filename: 'spinach-tart', content_type: 'image/jpg')
p24 = URI.open('https://i.pinimg.com/564x/3e/50/2f/3e502fe4136fc314940826fb054b0bc1.jpg')
recipe_24.photo.attach(io: p24, filename: 'powder-fine', content_type: 'image/jpg')
p25 = URI.open('https://historicalitaliancookinghome.files.wordpress.com/2020/05/ova-spongia-piatto.jpg')
recipe_25.photo.attach(io: p25, filename: 'ova-spongia-ex-lacte', content_type: 'image/jpg')
p26 = URI.open('https://img.sndimg.com/food/image/upload/c_thumb,q_80,w_562,h_316/v1/img/recipes/40/56/picB5Wkvh.jpg')
recipe_26.photo.attach(io: p26, filename: 'inca-salad', content_type: 'image/jpg')
p27 = URI.open('https://historicalitaliancookinghome.files.wordpress.com/2018/12/Cozze-2.jpg')
recipe_27.photo.attach(io: p27, filename: 'inca-salad', content_type: 'image/jpg')
p28 = URI.open('https://historicalitaliancookinghome.files.wordpress.com/2018/12/Cozze-2.jpg')
recipe_28.photo.attach(io: p28, filename: 'inca-salad', content_type: 'image/jpg')

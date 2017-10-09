# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FoodCategory.destroy_all
Recipe.destroy_all
FoodItem.destroy_all
Ingredient.destroy_all
Direction.destroy_all

f1 = FoodCategory.create(name: "Soup", image: "soup.jpg")
f2 = FoodCategory.create(name: "Pasta", image: "soup.jpg")
f3 = FoodCategory.create(name: "Meat", image: "soup.jpg")
f4 = FoodCategory.create(name: "Seafood & Fish", image: "soup.jpg")
f5 = FoodCategory.create(name: "Light Snacks", image: "soup.jpg")
f6 = FoodCategory.create(name: "Desserts", image: "soup.jpg")

r1 = Recipe.create(name: "Goulash soup", image: "https://www.toprecepty.cz/fotky/recepty/0058/2c482d10e5faa7ff4720ccc9766b7f5e-facebook.jpg", food_category_id: f1.id, cooking_time: 20, preping_time: 20, servings: 4)
r2 = Recipe.create(name: "Potato soup", image: "https://i.pinimg.com/originals/2e/65/89/2e65892ea73870790fe53dcafd347200.jpg", food_category_id: f1.id, cooking_time: 20, preping_time: 20, servings: 4)
r3 = Recipe.create(name: "Oven-baked rigatoni with wild boar salami", image: "https://cdn.jamieoliver.com/recipe-database/oldImages/xtra_med/370_1_1439304364.jpg", food_category_id: f2.id, cooking_time: 25, preping_time: 30, servings: 6)
r4 = Recipe.create(name: "Beef Goulash", image: "https://i.pinimg.com/originals/64/fc/5e/64fc5e04fd04859e16ca9e86497ab83a.jpg", food_category_id: f3.id, cooking_time: 60, preping_time: 40, servings: 4)

fi1 = FoodItem.create(name: "beef")
fi2 = FoodItem.create(name: "onion")
fi3 = FoodItem.create(name: "oil")
fi4 = FoodItem.create(name: "sweet paprika")
fi5 = FoodItem.create(name: "beef stock")
fi6 = FoodItem.create(name: "plain flour")
fi7 = FoodItem.create(name: "garlic")
fi8 = FoodItem.create(name: "potatoes")
fi9 = FoodItem.create(name: "salt")
fi10 = FoodItem.create(name: "pepper")
fi11 = FoodItem.create(name: "cumin")
fi12 = FoodItem.create(name: "speck")
fi13 = FoodItem.create(name: "chocolate chips")
fi14 = FoodItem.create(name: "blueberries")
fi15 = FoodItem.create(name: "vegetable oil")
fi16 = FoodItem.create(name: "bananas")
fi17 = FoodItem.create(name: "raspberries")
fi18 = FoodItem.create(name: "desiccated coconut")
fi19 = FoodItem.create(name: "white chocolate")
fi20 = FoodItem.create(name: "dark chocolate")
fi21 = FoodItem.create(name: "cocoa powder")
fi22 = FoodItem.create(name: "vanilla extract")
fi23 = FoodItem.create(name: "apples")
fi24 = FoodItem.create(name: "oats")

i1 = Ingredient.create(recipe_id: r1.id, food_item_id: fi1.id, quantity: "200 g")
i2 = Ingredient.create(recipe_id: r1.id, food_item_id: fi2.id, quantity: "1 finely chopped")
i3 = Ingredient.create(recipe_id: r1.id, food_item_id: fi3.id, quantity: "2 tbs")
i4 = Ingredient.create(recipe_id: r1.id, food_item_id: fi4.id, quantity: "2 tsp")
i5 = Ingredient.create(recipe_id: r1.id, food_item_id: fi5.id, quantity: "1 litre")
i6 = Ingredient.create(recipe_id: r1.id, food_item_id: fi6.id, quantity: "1 tbs")
i7 = Ingredient.create(recipe_id: r1.id, food_item_id: fi7.id, quantity: "2 cloves")
i8 = Ingredient.create(recipe_id: r1.id, food_item_id: fi8.id, quantity: "2")
i9 = Ingredient.create(recipe_id: r1.id, food_item_id: fi9.id, quantity: "")
i10 = Ingredient.create(recipe_id: r1.id, food_item_id: fi10.id, quantity: "")
i11 = Ingredient.create(recipe_id: r1.id, food_item_id: fi11.id, quantity: "")
i12 = Ingredient.create(recipe_id: r1.id, food_item_id: fi12.id, quantity: "200 g")

d1 = Direction.create(step: 1, recipe_id: r1.id, instruction: "Heat oil in a saucepan over medium-high heat. Add speck, garlic, chopped onion and cooked until soft. Add beef and cook for 2 mins. Add paprika and stir it for 1 minute. Pour 200ml of water. Bring to boil and simmer it for 10 mins")
d2 = Direction.create(step: 2, recipe_id: r1.id, instruction: "Ad stock and cook it for 15 mins. Add potato. Season it with salt, pepper and cumin. Cook, partially covered, for 30 minutes or until slightly thickened and potato tender.")
d3 = Direction.create(step: 3, recipe_id: r1.id, instruction: "Add plain flour to thicken the soup. Serve with pice of bread")

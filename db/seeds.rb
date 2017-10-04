# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FoodCategory.destroy_all
Recipe.destroy_all

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

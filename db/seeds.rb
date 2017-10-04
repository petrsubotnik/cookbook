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
f1 = FoodCategory.create(name: "Pasta", image: "soup.jpg")
f1 = FoodCategory.create(name: "Meat", image: "soup.jpg")
f1 = FoodCategory.create(name: "Seafood & Fish", image: "soup.jpg")
f1 = FoodCategory.create(name: "Light Snacks", image: "soup.jpg")
f1 = FoodCategory.create(name: "Desserts", image: "soup.jpg")

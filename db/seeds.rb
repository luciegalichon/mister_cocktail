# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cocktails = Cocktail.create(name: "Mojito")
cocktails = Cocktail.create(name: "Martini")
cocktails = Cocktail.create(name: "Ricard")
cocktails = Cocktail.create(name: "Margarita")
cocktails = Cocktail.create(name: "Bloody Mary")
ingredients = Ingredient.create(name: "Menthe")

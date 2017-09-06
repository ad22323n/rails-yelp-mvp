# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "12385730921",
    category:     "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "535872523590",
    category:     "belgian"
  },
  {
    name:         "I like burgers",
    address:      "112 Rokin",
    phone_number: "02035872",
    category:     "belgian"
  },
  {
    name:         "WokWokWok",
    address:      "Around the corner 374",
    phone_number: "69o437622354",
    category:     "chinese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "987647832523",
    category:     "japanese"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    category:     "French",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "33153434340",
    description:  "French Gastronomy.",
    stars:        3
  },
  {
    name:         "Ashok",
    category:     "Indian",
    address:      "Route d'Ath 107, 7050 Jurbise",
    phone_number: "065360776",
    description:  "Indian authentic restaurant",
    stars:        1
  },
  {
    name:         "Bon-Bon",
    category:     "Flemish",
    address:      "Avenue de Tervueren 453, 1150 Bruxelles",
    phone_number: "023466615",
    description:  "Flemish food with creatively presented dishes & chalkboard specials.",
    stars:        3
  },
  {
    name:         "yaki",
    category:     "Thai",
    address:      " Rue des Poissonniers 6/B, 1000 Bruxelles",
    phone_number: "025032858",
    description:  "Thai food with creatively presented dishes & chalkboard specials.",
    stars:        1
  },
  {
    name:         "Al balmaki",
    category:     "Lebanese",
    address:      "Rue des Eperonniers 67, 1000 Bruxelles",
    phone_number: "025130834",
    description:  "Le food with creatively presented dishes & chalkboard specials.",
    stars:        2
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }


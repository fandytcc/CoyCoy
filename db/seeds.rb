# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all

prod1 = Product.create!(name: "Luke skywalker doll",
                        description: "It's aweseme!",
                        price: 500,
                        brand: "ILM merc.")

prod2 = Product.create!(name: "Lego train",
                        description: "Rebuild fast",
                        price: 1000,
                        brand: "LEGO inc.")

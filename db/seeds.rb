# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
ListItem.destroy_all
Cart.destroy_all
User.destroy_all


20.times do
  Product.create!(name: Faker::Commerce.product_name,
                  description: Faker::Hipster.paragraph[0..496] << "...",
                  price: Faker::Commerce.price,
                  brand: Faker::Company.name)
end

productList = Product.all

user = User.create!(email: "test@test.com", password: "123456")
cart = Cart.create!(user: user)

# item1 = ListItem.create!(cart: cart, product: productList[0])
# item2 = ListItem.create!(cart: cart, product: productList[1])
# item1 = ListItem.create!(cart: cart, product: productList[2])
# item2 = ListItem.create!(cart: cart, product: productList[3])
# item1 = ListItem.create!(cart: cart, product: productList[4])
# item2 = ListItem.create!(cart: cart, product: productList[5])
# item1 = ListItem.create!(cart: cart, product: productList[6])
# item2 = ListItem.create!(cart: cart, product: productList[7])

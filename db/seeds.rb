require 'faker'

puts "Deleting old data..."
Product.destroy_all
User.destroy_all
Review.destroy_all

# puts "Resetting tables ids..."
# User.connection.execute("UPDATE `sqlite_sequence` SET `seq` = 0 WHERE `name` = 'users'")
# Product.connection.execute("UPDATE `sqlite_sequence` SET `seq` = 0 WHERE `name` = 'products'")
# Review.connection.execute("UPDATE `sqlite_sequence` SET `seq` = 0 WHERE `name` = 'reviews'")

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Tusker", price: 165)
product2 = Product.create(name: "Gilbeys", price: 300)
product3 = Product.create(name: "Bordeaux", price: 3000)
product4 = Product.create(name: "Delmonte Orange", price: 120)
product5 = Product.create(name: "General Meakins", price: 150)


puts "Creating reviews..."
review1 = Review.create(user_id: 1, product_id: 1, star_rating: 3, comment: "Good product but high prices")
review2 = Review.create(user_id: 1, product_id: 2, star_rating: 5, comment: "Amazing product!")
review3 = Review.create(user_id: 3, product_id: 1, star_rating: 4, comment: "Strong drink, lasts long")
review4 = Review.create(user_id: 2, product_id: 5, star_rating: 2, comment: "No value for money, didn't like it")
review2 = Review.create(user_id: 3, product_id: 4, star_rating: 5, comment: "Enjoyed drinking this drink")

puts "Seeding done!"

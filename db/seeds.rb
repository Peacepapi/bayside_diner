# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Section.create(name: 'Breakfast')
Section.create(name: 'Lunch')
Section.create(name: 'Dinner')
Section.create(name: 'Snack')

FoodItem.create(name: 'Baked Potato', price: 10, section_id: 1, description: 'Perfect your spud technique then pile our filling ideas high.', remote_image_url: 'https://static.pexels.com/photos/45247/potato-cook-pot-eat-45247.jpeg')
FoodItem.create(name: 'Burger', price: 13, section_id: 2, description: 'Everything you will ever need to put inside a bun.', remote_image_url: 'https://static.pexels.com/photos/70497/pexels-photo-70497.jpeg')
FoodItem.create(name: 'Waffle', price: 5.6, section_id: 1, description: 'Perfect your spud technique then pile our filling ideas high.', remote_image_url: 'https://static.pexels.com/photos/67024/pexels-photo-67024.jpeg')
FoodItem.create(name: 'Egg Sandwich', price: 4.768, section_id: 2, description: ' Delicious egg dishes from sandwich to fry.', remote_image_url: 'https://static.pexels.com/photos/107999/pexels-photo-107999.jpeg')
FoodItem.create(name: 'Curry', price: 7.59, section_id: 3, description: 'Rustle up a spicy supper using fish, vegetables or meat and a blend of rich flavours.', remote_image_url: 'https://static.pexels.com/photos/66639/pexels-photo-66639.jpeg')
FoodItem.create(name: 'Pizza', price: 10.59, section_id: 3, description: ' Put down the takeaway menu and make your own.', remote_image_url: 'https://static.pexels.com/photos/66639/pexels-photo-66639.jpeg')

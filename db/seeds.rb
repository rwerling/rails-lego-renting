# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
Review.destroy_all
Lego.destroy_all
User.destroy_all

lego_img_army = URI.open('app/assets/images/lego_army.jpg')
lego_img_baby = URI.open('app/assets/images/lego_baby.jpg')
lego_img_breaking = URI.open('app/assets/images/lego_breaking.jpg')
lego_img_burger = URI.open('app/assets/images/lego_burger.jpg')
lego_img_cabin = URI.open('app/assets/images/lego_cabin.jpg')
lego_img_coffee = URI.open('app/assets/images/lego_coffee.jpg')
lego_img_house = URI.open('app/assets/images/lego_house.jpg')
lego_img_kitchen = URI.open('app/assets/images/lego_kitchen.jpg')
lego_img_oops = URI.open('app/assets/images/lego_oops.jpg')
lego_img_pizza = URI.open('app/assets/images/lego_pizza.jpg')
lego_img_porsche = URI.open('app/assets/images/lego_porsche.jpg')
lego_img_skyscraper = URI.open('app/assets/images/lego_skyscraper.jpg')
lego_img_sushi = URI.open('app/assets/images/lego_sushi.jpg')

# create fake user
user_1 = User.create(email: "test@gmail.com", password: "123456")


lego_army = Lego.new do |u|
  u.title = 'Star Wars Clone Army'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_army, filename: 'test', content_type: 'image/jpg')
end
lego_army.save

lego_baby = Lego.new do |u|
  u.title = 'Daddy changing diapers'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_baby, filename: 'test', content_type: 'image/jpg')
end
lego_baby.save

lego_breaking = Lego.new do |u|
  u.title = 'Braking Bad Rolling meth lab'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_breaking, filename: 'test', content_type: 'image/jpg')
end
lego_breaking.save

lego_burger = Lego.new do |u|
  u.title = 'Fast Food Joints'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_burger, filename: 'test', content_type: 'image/jpg')
end
lego_burger.save

lego_cabin = Lego.new do |u|
  u.title = 'Creepy Cabin'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_cabin, filename: 'test', content_type: 'image/jpg')
end
lego_cabin.save

lego_coffee = Lego.new do |u|
  u.title = 'Exploding Coffee Machine'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_coffee, filename: 'test', content_type: 'image/jpg')
end
lego_coffee.save

lego_house = Lego.new do |u|
  u.title = 'Bautiful Townhouse'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_house, filename: 'test', content_type: 'image/jpg')
end
lego_house.save

lego_kitchen = Lego.new do |u|
  u.title = 'Retro Kitchen'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_kitchen, filename: 'test', content_type: 'image/jpg')
end
lego_kitchen.save

lego_oops = Lego.new do |u|
  u.title = 'Ooops!'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_oops, filename: 'test', content_type: 'image/jpg')
end
lego_oops.save

lego_pizza = Lego.new do |u|
  u.title = 'Pizza slice'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_pizza, filename: 'test', content_type: 'image/jpg')
end
lego_pizza.save

lego_porsche = Lego.new do |u|
  u.title = 'Porsche 911'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_porsche, filename: 'test', content_type: 'image/jpg')
end
lego_porsche.save

lego_skyscraper = Lego.new do |u|
  u.title = 'Comic Skyscraper'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_skyscraper, filename: 'test', content_type: 'image/jpg')
end
lego_skyscraper.save

lego_sushi = Lego.new do |u|
  u.title = 'Sushi Stand'
  u.number_of_parts = rand(100..300)
  u.user_id = user_1.id
  u.photo.attach(io: lego_img_sushi, filename: 'test', content_type: 'image/jpg')
end
lego_sushi.save

# Lego.new(title: "Fast food collection", number_of_parts: rand(100..300), user_id: user_1.id).save
# Lego.new(title: "Shit!", number_of_parts: rand(100..300), user_id: user_1.id).save
# Lego.new(title: "Breaking Bad Meth Lab", number_of_parts: rand(400..600), user_id: user_1.id).save
# Lego.new(title: "Skyscraper", number_of_parts: rand(3000..4000), user_id: user_1.id).save
# Lego.new(title: "Town House", number_of_parts: rand(400..800), user_id: user_1.id).save
# Lego.new(title: "Nuclear Contamination", number_of_parts: rand(100..300), user_id: user_1.id).save
# Lego.new(title: "Pizza Slice", number_of_parts: rand(100..200), user_id: user_1.id).save
# Lego.new(title: "Porsche 911", number_of_parts: rand(100..200), user_id: user_1.id).save

# create 1 booking and 1 review for model from

booking_1 = Booking.create(start_date: Date.today, end_date: Date.today, user: user_1, lego: Lego.last)
Review.new(comment: "Wow! Such a nice model! We had so much fun building it. The bricks where brand new and not a single piece was missing. Thank you so much!", rating: 5, booking: booking_1).save

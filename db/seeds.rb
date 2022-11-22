# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Review.destroy_all
Lego.destroy_all
User.destroy_all

user_1 = User.create(email: "test@gmail.com", password: "123456")

Lego.new(title: "Fast food collection", number_of_parts: rand(100..300), user_id: user_1.id).save
Lego.new(title: "Shit!", number_of_parts: rand(100..300), user_id: user_1.id).save
Lego.new(title: "Breaking Bad Meth Lab", number_of_parts: rand(400..600), user_id: user_1.id).save
Lego.new(title: "Skyscraper", number_of_parts: rand(3000..4000), user_id: user_1.id).save
Lego.new(title: "Town House", number_of_parts: rand(400..800), user_id: user_1.id).save
Lego.new(title: "Nuclear Contamination", number_of_parts: rand(100..300), user_id: user_1.id).save
Lego.new(title: "Pizza Slice", number_of_parts: rand(100..200), user_id: user_1.id).save
Lego.new(title: "Porsche 911", number_of_parts: rand(100..200), user_id: user_1.id).save

# puts 'Creating 10 fake legos ...'

# 10.times do
#   lego = Lego.new(
#     title: Faker::Game.title,
#     number_of_parts: rand(100..500),
#     user_id: user_1.id
#   )
#   lego.save!
# end

booking_1 = Booking.create(start_date: Date.today, end_date: Date.today, user: user_1, lego: Lego.last)

Review.new(comment: "Wow! Such a nice model! We had so much fun building it. The bricks where brand new and not a single piece was missing. Thank you so much!", rating: 5, booking: booking_1).save

# puts 'Creating fake review .....'

#   review = Review.new(
#     comment: "This is a great lego stone. would recommend!!!",
#     rating: rand(1..5),
#     booking: booking_1
#   )

# review.save!
# puts 'Finished!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Lego.destroy_all
User.destroy_all

puts 'Creating 100 fake legos ...'

user_1 = User.create(email: "test@gmail.com", password: "123456")


100.times do
  lego = Lego.new(
    title: Faker::Game.title,
    number_of_parts: rand(1..1000),
    user_id: user_1.id
  )
  lego.save!
end
puts 'Finished!'

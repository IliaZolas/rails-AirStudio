# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# "title"/"address"/"price"/"description"
# require 'faker'
require 'faker'
puts "cleaning data base"

User.destroy_all
Studio.destroy_all

puts 'Creating 20 fake users...'
20.times do
  user = User.new(
    email:    Faker::Internet.email,
    password: "123456"
  )
  user.save!
end

puts 'Creating 20 fake studios...'
20.times do
  studio = Studio.new(
    title:    Faker::Book.title,
    address: Faker::Address.full_address,
    price:  rand(85..214),
    description: Faker::Lorem.paragraphs(number: 1),
    user_id: User.first.id + 1
  )
  studio.save!
end
puts 'Finished!'


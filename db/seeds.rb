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

puts "creating the makers users"

jonas = User.new(
    email: "jonas@mail.com",
    password: "123456",
    last_name: 'Hermon',
    first_name: 'Jonas',
  )
jonas.save!

elodie = User.new(
    email: "elodie@mail.com",
    password: "123456",
    last_name: 'Holley',
    first_name: 'Elodie',
  )
elodie.save!

ilia = User.new(
    email: "Ilia@mail.com",
    password: "123456",
    last_name: 'Zola',
    first_name: 'Ilia',
  )
ilia.save!

ghizlane = User.new(
    email: "ghighi@mail.com",
    password: "123456",
    last_name: 'Odyssey',
    first_name: 'Ghizlane',
  )
ghizlane.save!

puts 'Creating 5 fake users...'

5.times do
  user = User.new(
    email:    Faker::Internet.email,
    password: "123456",
    last_name: Faker::Name.first_name,
    first_name: Faker::Name.last_name,

  )
  user.save!
end

puts "creating Makers 8 Studios"

  studio1 = Studio.new(
    title:    Faker::Book.unique.title,
    address: "rue Marterey 36, 1005 lausanne",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: jonas
  )
  studio1.save!
  studio2 = Studio.new(
    title:    Faker::Book.unique.title,
    address: "Avenue du Leman 19, 1005 Lausanne",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: jonas
  )
  studio2.save!
  studio3 = Studio.new(
    title:    Faker::Book.unique.title,
    address: "Boulvevard de Grancy 1, 1006 Lausanne",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: ilia
  )
  studio3.save!
  studio4 = Studio.new(
    title:    Faker::Book.unique.title,
    address: "Rue Beau-Sejour 27, 1003 Lausanne",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: ilia
  )
  studio4.save!
  studio5 = Studio.new(
    title:    Faker::Book.unique.title,
    address: "Avenue de la gare 46, 1001 Lausanne",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: elodie
  )
  studio5.save!
  studio6 = Studio.new(
    title:    Faker::Book.unique.title,
    address: "Rue du tunnel 7, 1005 Lausanne",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: elodie
  )
  studio6.save!
  studio7 = Studio.new(
    title:    Faker::Book.unique.title,
    address: "Rue du tunnel 1, 1005 Lausanne",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: ghizlane
  )
  studio7.save!
  studio8 = Studio.new(
    title:    Faker::Book.unique.title,
    address: "Rue du Simplon 35, 1006 Lausanne",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: ghizlane
  )
  studio8.save!


puts 'Creating 20 fake studios...'
20.times do
  studio = Studio.new(
    title:    Faker::Book.unique.title,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: User.all.sample
  )
  studio.save!
end

puts 'Finished!'


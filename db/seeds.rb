require "open-uri"
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
file = URI.open('https://images.unsplash.com/photo-1558474566-cbeb8b92cf48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio1 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Rue Marterey 36, 1005 lausanne",
  price:  rand(85..214),
  description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
  user: jonas
)
studio1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio1.save!
file = URI.open('https://images.unsplash.com/photo-1603074256912-949e556ba901?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio2 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Avenue du Leman 19, 1005 Lausanne",
  price:  rand(85..214),
  description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
  user: jonas
)
studio2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio2.save!
file = URI.open('https://images.unsplash.com/photo-1568246605205-f8df0dde3c35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio3 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Boulevard de Grancy 1, 1006 Lausanne",
  price:  rand(85..214),
  description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
  user: ilia
)
studio3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio3.save!
file = URI.open('https://images.unsplash.com/photo-1597083610113-6e274e92ce55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio4 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Rue Beau-Sejour 27, 1003 Lausanne",
  price:  rand(85..214),
  description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
  user: ilia
)
studio4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio4.save!
file = URI.open('https://images.unsplash.com/photo-1581092795442-d153057d8e0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio5 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Avenue de la gare 46, 1001 Lausanne",
  price:  rand(85..214),
  description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
  user: elodie
)
studio5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio5.save!
file = URI.open('https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio6 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Rue du tunnel 7, 1005 Lausanne",
  price:  rand(85..214),
  description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
  user: elodie
)
studio6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio6.save!
file = URI.open('https://images.unsplash.com/photo-1598653222000-6b7b7a552625?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio7 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Rue du tunnel 1, 1005 Lausanne",
  price:  rand(85..214),
  description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
  user: ghizlane
)
studio7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio7.save!
file = URI.open('https://images.unsplash.com/photo-1512053459797-38c3a066cabd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
studio8 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Rue du Simplon 35, 1006 Lausanne",
  price:  rand(85..214),
  description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
  user: ghizlane
)
studio8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio8.save!

puts 'Creating 10 fake studios...'
photos = ["https://images.unsplash.com/photo-1574517947730-55cb23e608c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", "https://images.unsplash.com/photo-1559732277-7453b141e3a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
"https://images.unsplash.com/photo-1563330232-57114bb0823c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", "https://images.unsplash.com/photo-1463421585849-6b0acf2c9257?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1332&q=80",
"https://images.unsplash.com/photo-1553526171-9e305610ccdd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80", "https://images.unsplash.com/photo-1571916962125-ea2d1c8bde47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80",
"https://images.unsplash.com/photo-1585842351739-9e872cfacb4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80", "https://images.unsplash.com/photo-1592060567920-a46e1bffb28e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80",
"https://images.unsplash.com/photo-1555724950-dcd0957571f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", "https://images.unsplash.com/photo-1560844915-bb3189e146ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1731&q=80"]
10.times do
  file = URI.open(photos.first)

  studio = Studio.new(
    title:    Faker::Book.unique.title,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    price:  rand(85..214),
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    user: User.all.sample
  )
  studio.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  studio.save!
  photos.delete_at(0)
end

puts 'Finished!'


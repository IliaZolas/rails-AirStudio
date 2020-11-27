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
  description: "This space is purpose-built for audio production. The studio features a bespoke studio outboard for shaping and tuning sounds. This set-up allows producers to run multiple sessions simultaneously.",
  user: jonas
)
studio1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio1.save!

file = URI.open('https://images.unsplash.com/photo-1603074256912-949e556ba901?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio2 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Avenue du Leman 19, 1005 Lausanne",
  price:  rand(85..214),
  description: "This is our dedicated audio
recording suite designed for recording podcasts, voice-overs, vocals
and instruments. Alongside a professional mic selection and the latest
podcasting hardware, it has custom-built “suspended” equipment.",
  user: jonas
)
studio2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio2.save!

file = URI.open('https://images.unsplash.com/photo-1568246605205-f8df0dde3c35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio3 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Boulevard de Grancy 1, 1006 Lausanne",
  price:  rand(85..214),
  description: "The suite offers a space to edit, create, record independently or connect with our other suites.
The studio also features our unique floating vocal booth, allowing artists to record vocal takes with full control over the sound. We also offer full access to Logic Pro X, Ableton Live 10 + Adobe Audition.",
  user: ilia
)
studio3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio3.save!

file = URI.open('https://images.unsplash.com/photo-1597083610113-6e274e92ce55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio4 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Rue Beau-Sejour 27, 1003 Lausanne",
  price:  rand(85..214),
  description: "Each room is acoustically tuned and treated to capture the purest audio, right at the source. Whether you're a pop artist, rock band, hip/hop producer, rapper, singer/songwriter or just someone looking to make some noise, we are ready for any of your production needs.",
  user: ilia
)
studio4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio4.save!

file = URI.open('https://images.unsplash.com/photo-1581092795442-d153057d8e0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio5 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Avenue de la gare 46, 1001 Lausanne",
  price:  rand(85..214),
  description: "We feature a large control room that is connected to two different live rooms (both excellent for drums), and dialed in to a 192 point patch bay with extensive Class A preamps, and top-tier outboard gear. Our mic selection will get you ANY sound you need.",
  user: elodie
)
studio5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio5.save!

file = URI.open('https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio6 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Rue du tunnel 7, 1005 Lausanne",
  price:  rand(85..214),
  description: "Our extensive instrument collection (Pearl River upright piano, Taylor 414CE, Tele, Strat, D'Angelico EX-SS, J-Bass, P-Bass, various hard synths, etc.) is at your disposal to make whatever sonic goodness you may need.
Street parking is 10-hours, and load in is right at the studio door.",
  user: elodie
)
studio6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio6.save!

file = URI.open('https://images.unsplash.com/photo-1598653222000-6b7b7a552625?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
studio7 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Rue du tunnel 1, 1005 Lausanne",
  price:  rand(85..214),
  description: "WHERE MUSIC HAPPENS! Welcome here where we take care of all
your audio and production needs. Our engineers are all
professionally trained and work closely with our clients in order to make
sure they have a positive experience.",
  user: ghizlane
)
studio7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio7.save!

file = URI.open('https://images.unsplash.com/photo-1512053459797-38c3a066cabd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
studio8 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "Rue du Simplon 35, 1006 Lausanne",
  price:  rand(85..214),
  description: "Great atmosphere with custom lighting throughout the studio to suit your vibe. The best recording, vocal tracking, producing & mixing environment you will find on the westside, especially for the price.",
  user: ghizlane
)
studio8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio8.save!

puts 'Creating 10 fake studios...'
file = URI.open("https://images.unsplash.com/photo-1559732277-7453b141e3a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
studio9 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "Our recording and monitoring room are designed to achieve the most precise possible acoustic properties and sound. Studio features a considerable collection of High End equipment.",
  user: User.all.sample
)
studio9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio9.save!

file = URI.open("https://images.unsplash.com/photo-1574517947730-55cb23e608c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
studio10 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "With a good mic selection, great sounding rooms and included experienced engineer/producer you will get your best work done here. No project is too big or too small.",
  user: User.all.sample
)
studio10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio10.save!

file = URI.open("https://images.unsplash.com/photo-1563330232-57114bb0823c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
studio11 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "Mixers dream!- Extensive Universal Audio UAD systems dsp available (4 quad processors+1 Octo+1 Duo- 26dsp chips) for large mixes using the highest grade SSl, Neve, Manley, Pultec, Studer, EMT, Shadow hills, La2a, 1176 compressors, Api and many more.",
  user: User.all.sample
)
studio11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio11.save!

file = URI.open("https://images.unsplash.com/photo-1463421585849-6b0acf2c9257?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1332&q=80")
studio12 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "We are stacked with high end recording, production and monitoring equipment. Our staff producers and engineers develop talent and are advancing their own music projects as artists themselves.",
  user: User.all.sample
)
studio12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio12.save!

file = URI.open("https://images.unsplash.com/photo-1553526171-9e305610ccdd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80")
studio13 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "Everything is routed through our Apollo system, including analog pre's, channel strips, amps and Kemper profile, so you must have UAD console installed in your computer to record. Once booked, we will send you our I/O settings. Our Apollo system is Thunderbolt based, so you'll need a USB-C converter if you have a newer computer.",
  user: User.all.sample
)
studio13.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio13.save!

file = URI.open("https://images.unsplash.com/photo-1571916962125-ea2d1c8bde47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80")
studio14 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "Reference Monitors - Amphion Two15s, Genelec 8040s and an Avantone Cube for mono summing. We are also equipped with a PA system with two 1000 watt QSC K12s and a 1500 watt JBL sub so you can hear how your sounds in a venue-standard system. You can switch between all systems via the Apollo.",
  user: User.all.sample
)
studio14.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio14.save!

file = URI.open("https://images.unsplash.com/photo-1585842351739-9e872cfacb4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80")
studio15 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "-Vocal Recording -Great for Music Production work -Small-group- podcast recording (audio-only) -Mixing & Mastering Available (additional fee).",
  user: User.all.sample
)
studio15.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio15.save!

file = URI.open("https://images.unsplash.com/photo-1592060567920-a46e1bffb28e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80")
studio16 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "World-class instruments & audio gear in an inviting space, with your own dedicated intern/assistant who can also do basic engineering. Dedicated vocal booth, lounge, kitchen, smoke area. In-house engineers, water & refreshments.",
  user: User.all.sample
)
studio16.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio16.save!

file = URI.open("https://images.unsplash.com/photo-1555724950-dcd0957571f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
studio17 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "Load-in parking included. Relax on the couch, browse our bookshelves and art-lined walls for inspiration, or unwind with your band in our smoker’s lounge. Sessions include complimentary coffee, snacks & refreshments. Our kitchen includes a fridge, hot plate, and silverware.",
  user: User.all.sample
)
studio17.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio17.save!

file = URI.open("https://images.unsplash.com/photo-1560844915-bb3189e146ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1731&q=80")
studio18 = Studio.new(
  title:    Faker::Book.unique.title,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  price:  rand(85..214),
  description: "Our Recording Studio is your one-stop spot for all of your professional recording needs. We offer an individual working environment that allows artists and bands to focus on their creative and artistic processes.",
  user: User.all.sample
)
studio18.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
studio18.save!

puts 'Finished!'


#
# description = [,
# ,
# ,
# ,
# ,
# ,
# ,
# ,
# ,
# ]
# photos = [,
# ,
# ,
# ,
# ,
# 10.times do
#   file = URI.open(photos.first)

#   studio = Studio.new(
#     title:    Faker::Book.unique.title,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     price:  rand(85..214),
#     description: description.each do |d|
#       d(0)+1
#     end,
#     user: User.all.sample
#   )
#   studio.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
#   studio.save!
#   photos.delete_at(0)
# end

#

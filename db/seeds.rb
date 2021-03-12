require 'open-uri'

puts 'cleaning'
Room.destroy_all

puts 'adding rooms...'

room1 = Room.new(name: "Chambre 1", capacity: 2,
                   description: "Suite principale baignée de lumière. Elle est équipée de 2 lits simples ou 1 lit double avec salle de bain personnelle équipée d'une douche et d'une baignoire.")
file = URI.open('https://res.cloudinary.com/dkbrg4km6/image/upload/v1615568005/chambre1_skwp8x.jpg')
room1.photo.attach(io: file, filename: 'chambre1.jpg', content_type: 'image/png')
room1.save!

puts 'room 1 created'

room2 = Room.new(name: "Chambre 2", capacity: 2,
                   description: "Suite equipée de 2 lits simples ou d'un lit double. La salle de bain est équipée d'une douche et d'une baignoire.")
file = URI.open('https://res.cloudinary.com/dkbrg4km6/image/upload/v1615568005/chambre2_qjx094.jpg')
room2.photo.attach(io: file, filename: 'chambre2.jpg', content_type: 'image/png')
room2.save!

puts 'room 2 created'

room3 = Room.new(name: "Chambre 3", capacity: 2,
                   description: "Chambre equipée de 2 lits simples, pas de salle de bain, débrouille-toi.")
file = URI.open('https://res.cloudinary.com/dkbrg4km6/image/upload/v1615568005/chambre3_q5xowb.jpg')
room3.photo.attach(io: file, filename: 'chambre3.jpg', content_type: 'image/png')
room3.save!

puts 'room 3 created'

room4 = Room.new(name: "Chambre 4", capacity: 2,
                   description: "Chambre equipée de 2 lits simples... et vraiment rien d'autre...")
file = URI.open('https://res.cloudinary.com/dkbrg4km6/image/upload/v1615568005/chambre4_a39hab.png')
room4.photo.attach(io: file, filename: 'chambre4.png', content_type: 'image/png')
room4.save!

puts 'room 4 created'

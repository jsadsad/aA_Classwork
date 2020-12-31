# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Leonardo')
Artwork.create(title: 'Mona Lisa', artist_id: 1, image_url: "ml")
Artwork.create(title: 'The Last Supper', artist_id: 1, image_url: "last")
User.create(username: 'Donatello')
Artwork.create(title: 'David', artist_id: 2, image_url: 'dv')
Artwork.create(title: 'Equestrian statue of Gattamelata', artist_id: 2, image_url: 'eqst_g')

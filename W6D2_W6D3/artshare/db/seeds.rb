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

# create_table "artwork_shares", force: :cascade do |t|
#     t.integer "artwork_id", null: false
#     t.integer "viewer_id", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["artwork_id"], name: "index_artwork_shares_on_artwork_id"
#     t.index ["viewer_id"], name: "index_artwork_shares_on_viewer_id"
#   end

#   create_table "artworks", force: :cascade do |t|
#     t.string "title", null: false
#     t.integer "artist_id", null: false
#     t.string "image_url", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["artist_id"], name: "index_artworks_on_artist_id"
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "username", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

# end

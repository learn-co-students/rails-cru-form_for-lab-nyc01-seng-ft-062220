# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

a1 = Artist.create(name: "King Gizzard", bio: "Aussies")
a2 = Artist.create(name: "Ezra Feinberg", bio: "Gentle")

g1 = Genre.create(name: "Garage Rock")
g2 = Genre.create(name: "Instrumental")

s1 = Song.create(name: "Horology", artist: a1, genre: g1)
s2 = Song.create(name: "Ovation", artist: a2, genre: g2)